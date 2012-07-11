/********
 * This file is part of Ext.NET.
 *     
 * Ext.NET is free software: you can redistribute it and/or modify
 * it under the terms of the GNU AFFERO GENERAL PUBLIC LICENSE as 
 * published by the Free Software Foundation, either version 3 of the 
 * License, or (at your option) any later version.
 * 
 * Ext.NET is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU AFFERO GENERAL PUBLIC LICENSE for more details.
 * 
 * You should have received a copy of the GNU AFFERO GENERAL PUBLIC LICENSE
 * along with Ext.NET.  If not, see <http://www.gnu.org/licenses/>.
 *
 *
 * @version   : 1.5.0 - Ext.NET Pro License
 * @author    : Ext.NET, Inc. http://www.ext.net/
 * @date      : 2012-07-10
 * @copyright : Copyright (c) 2007-2012, Ext.NET, Inc. (http://www.ext.net/). All rights reserved.
 * @license   : GNU AFFERO GENERAL PUBLIC LICENSE (AGPL) 3.0. 
 *              See license.txt and http://www.ext.net/license/.
 *              See AGPL License at http://www.gnu.org/licenses/agpl-3.0.txt
 ********/

using System.ComponentModel;
using System.Web.UI;

namespace Ext.Net
{
	/// <summary>
	/// 
	/// </summary>
	[Description("")]
    public partial class DesktopDirectEvents : ComponentDirectEvents
    {
        private ComponentDirectEvent shortcutClick;

        /// <summary>
        /// 
        /// </summary>
        [ListenerArgument(0, "id")]
        [ListenerArgument(1, "e")]
        [TypeConverter(typeof(ExpandableObjectConverter))]
        [ConfigOption("shortcutclick", typeof(DirectEventJsonConverter))]
        [PersistenceMode(PersistenceMode.InnerProperty)]
        [NotifyParentProperty(true)]
        [Description("")]
        public virtual ComponentDirectEvent ShortcutClick
        {
            get
            {
                if (this.shortcutClick == null)
                {
                    this.shortcutClick = new ComponentDirectEvent();
                }

                return this.shortcutClick;
            }
        }

        private ComponentDirectEvent ready;

        /// <summary>
        /// 
        /// </summary>
        [ListenerArgument(0, "el")]
        [TypeConverter(typeof(ExpandableObjectConverter))]
        [ConfigOption("ready", typeof(DirectEventJsonConverter))]
        [PersistenceMode(PersistenceMode.InnerProperty)]
        [NotifyParentProperty(true)]
        [Description("")]
        public virtual ComponentDirectEvent Ready
        {
            get
            {
                if (this.ready == null)
                {
                    this.ready = new ComponentDirectEvent();
                }

                return this.ready;
            }
        }

        private ComponentDirectEvent beforeUnload;

        /// <summary>
        /// 
        /// </summary>
        [ListenerArgument(0, "el")]
        [TypeConverter(typeof(ExpandableObjectConverter))]
        [ConfigOption("beforeunload", typeof(DirectEventJsonConverter))]
        [PersistenceMode(PersistenceMode.InnerProperty)]
        [NotifyParentProperty(true)]
        [Description("")]
        public virtual ComponentDirectEvent BeforeUnload
        {
            get
            {
                if (this.beforeUnload == null)
                {
                    this.beforeUnload = new ComponentDirectEvent();
                }

                return this.beforeUnload;
            }
        }
    }
}