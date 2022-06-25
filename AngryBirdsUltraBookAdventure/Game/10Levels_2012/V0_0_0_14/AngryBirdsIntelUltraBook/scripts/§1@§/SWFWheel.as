package §1@§
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   
   public class SWFWheel
   {
      
      public static const VERSION:String = "1.5";
      
      public static const §`+§:int = 0;
      
      public static const §?e§:int = 1;
      
      public static const §"n§:int = 2;
      
      public static const §0!6§:String = "SWFWheel.join";
      
      public static const §9!!§:String = "SWFWheel.getState";
      
      public static const §8!Y§:String = "function(){if(window.SWFWheel)return;var win=window,doc=document,nav=navigator;var SWFWheel=window.SWFWheel=function(id){this.setUp(id);if(SWFWheel.browser.msie)this.bind4msie();else this.bind()};SWFWheel.prototype={setUp:function(id){var el=SWFWheel.retrieveObject(id);if(el.nodeName.toLowerCase()==\'embed\'||SWFWheel.browser.safari)el=el.parentNode;this.target=el;this.eventType=SWFWheel.browser.mozilla?\'DOMMouseScroll\':\'mousewheel\'},bind:function(){this.target.addEventListener(this.eventType,function(evt){var target,name,delta=0;if(/XPCNativeWrapper/.test(evt.toString())){var k=evt.target.getAttribute(\'id\')||evt.target.getAttribute(\'name\');if(!k)return;target=SWFWheel.retrieveObject(k)}else{target=evt.target}name=target.nodeName.toLowerCase();if(name!=\'object\'&&name!=\'embed\')return;if(!target.checkBrowserScroll()){evt.preventDefault();evt.returnValue=false}if(!target.triggerMouseEvent)return;switch(true){case SWFWheel.browser.mozilla:delta=-evt.detail;break;case SWFWheel.browser.opera:delta=evt.wheelDelta/40;break;default:delta=evt.wheelDelta/80;break}target.triggerMouseEvent(delta,evt.ctrlKey,evt.altKey,evt.shiftKey)},false)},bind4msie:function(){var _wheel,_unload,target=this.target;_wheel=function(){var evt=win.event,delta=0,name=evt.srcElement.nodeName.toLowerCase();if(name!=\'object\'&&name!=\'embed\')return;if(!target.checkBrowserScroll())evt.returnValue=false;if(!target.triggerMouseEvent)return;delta=evt.wheelDelta/40;target.triggerMouseEvent(delta,evt.ctrlKey,evt.altKey,evt.shiftKey)};_unload=function(){target.detachEvent(\'onmousewheel\',_wheel);win.detachEvent(\'onunload\',_unload)};target.attachEvent(\'onmousewheel\',_wheel);win.attachEvent(\'onunload\',_unload)}};SWFWheel.browser=(function(){var ua=nav.userAgent.toLowerCase(),pl=nav.platform.toLowerCase(),version,pv=[0,0,0];if(nav.plugins&&nav.plugins[\'Shockwave Flash\']){version=nav.plugins[\'Shockwave Flash\'].description.replace(/^.*\\s+(\\S+\\s+\\S+$)/,\'$1\');pv[0]=parseInt(version.replace(/^(.*)\\..*$/,\'$1\'),10);pv[1]=parseInt(version.replace(/^.*\\.(.*)\\s.*$/,\'$1\'),10);pv[2]=/[a-z-A-Z]/.test(version)?parseInt(version.replace(/^.*[a-zA-Z]+(.*)$/,\'$1\'),10):0}else if(win.ActiveXObject){try{var axo=new ActiveXObject(\'ShockwaveFlash.ShockwaveFlash\');if(axo){version=axo.GetVariable(\'$version\');if(version){version=version.split(\' \')[1].split(\',\');pv[0]=parseInt(version[0],10);pv[1]=parseInt(version[1],10);pv[2]=parseInt(version[2],10)}}}catch(e){}}return{win:pl?/win/.test(pl):/win/.test(ua),mac:pl?/mac/.test(pl):/mac/.test(ua),playerVersion:pv,version:(ua.match(/.+(?:rv|it|ra|ie)[/:\\s]([\\d.]+)/)||[0,\'0\'])[1],chrome:/chrome/.test(ua),stainless:/stainless/.test(ua),safari:/webkit/.test(ua)&&!/(chrome|stainless)/.test(ua),opera:/opera/.test(ua),msie:/msie/.test(ua)&&!/opera/.test(ua),mozilla:/mozilla/.test(ua)&&!/(compatible|webkit)/.test(ua)}})();SWFWheel.join=function(id){var t=setInterval(function(){if(SWFWheel.retrieveObject(id)){clearInterval(t);new SWFWheel(id)}},0)};SWFWheel.getState=function(id){var STATE_HACKED=2,STATE_IF_NEEDED=1,STATE_NATIVE=0,br=SWFWheel.browser,fp=br.playerVersion;if(br.mac){if(fp[0]>=10&&fp[1]>=1){if(br.safari||br.stainless)return STATE_NATIVE;else if(br.chrome)return STATE_IF_NEEDED;else return STATE_HACKED}else{return STATE_HACKED}}if(!(fp[0]>=10&&fp[1]>=1)&&SWFWheel.browser.safari)return STATE_HACKED;var el=SWFWheel.retrieveObject(id),name=el.nodeName.toLowerCase(),wmode=\'\';if(name==\'object\'){var k,param,params=el.getElementsByTagName(\'param\'),len=params.length;for(var i=0;i<len;i++){param=params[i];if(param.parentNode!=el)continue;k=param.getAttribute(\'name\');wmode=param.getAttribute(\'value\')||\'\';if(/wmode/i.test(k))break}}else if(name==\'embed\'){var wmode=el.getAttribute(\'wmode\')||\'\'}if(br.msie){if(/transparent/i.test(wmode))return STATE_HACKED;else if(/opaque/i.test(wmode))return STATE_IF_NEEDED;else return STATE_NATIVE}else{if(/opaque|transparent/i.test(wmode))return STATE_HACKED;else return STATE_NATIVE}};SWFWheel.retrieveObject=function(id){var el=doc.getElementById(id);if(!el){var nodes=doc.getElementsByTagName(\'embed\'),len=nodes.length;for(var i=0;i<len;i++){if(nodes[i].getAttribute(\'name\')==id){el=nodes[i];break}}}return el}}";
      
      private static var § !@§:Stage;
      
      private static var §3!`§:int;
      
      private static var §^`§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            VERSION = "1.5";
            loop0:
            while(true)
            {
               §`+§ = 0;
               while(true)
               {
                  §?e§ = 1;
                  loop2:
                  for(; _loc1_ || _loc1_; while(_loc1_ || _loc1_)
                  {
                     §^`§ = true;
                     if(!(_loc1_ || _loc1_))
                     {
                        continue;
                     }
                     if(!_loc2_)
                     {
                        §§goto(addr41);
                     }
                     §§goto(addr75);
                  })
                  {
                     §"n§ = 2;
                     loop3:
                     while(true)
                     {
                        §0!6§ = "SWFWheel.join";
                        while(_loc1_)
                        {
                           §9!!§ = "SWFWheel.getState";
                           while(_loc1_)
                           {
                              §8!Y§ = "function(){if(window.SWFWheel)return;var win=window,doc=document,nav=navigator;var SWFWheel=window.SWFWheel=function(id){this.setUp(id);if(SWFWheel.browser.msie)this.bind4msie();else this.bind()};SWFWheel.prototype={setUp:function(id){var el=SWFWheel.retrieveObject(id);if(el.nodeName.toLowerCase()==\'embed\'||SWFWheel.browser.safari)el=el.parentNode;this.target=el;this.eventType=SWFWheel.browser.mozilla?\'DOMMouseScroll\':\'mousewheel\'},bind:function(){this.target.addEventListener(this.eventType,function(evt){var target,name,delta=0;if(/XPCNativeWrapper/.test(evt.toString())){var k=evt.target.getAttribute(\'id\')||evt.target.getAttribute(\'name\');if(!k)return;target=SWFWheel.retrieveObject(k)}else{target=evt.target}name=target.nodeName.toLowerCase();if(name!=\'object\'&&name!=\'embed\')return;if(!target.checkBrowserScroll()){evt.preventDefault();evt.returnValue=false}if(!target.triggerMouseEvent)return;switch(true){case SWFWheel.browser.mozilla:delta=-evt.detail;break;case SWFWheel.browser.opera:delta=evt.wheelDelta/40;break;default:delta=evt.wheelDelta/80;break}target.triggerMouseEvent(delta,evt.ctrlKey,evt.altKey,evt.shiftKey)},false)},bind4msie:function(){var _wheel,_unload,target=this.target;_wheel=function(){var evt=win.event,delta=0,name=evt.srcElement.nodeName.toLowerCase();if(name!=\'object\'&&name!=\'embed\')return;if(!target.checkBrowserScroll())evt.returnValue=false;if(!target.triggerMouseEvent)return;delta=evt.wheelDelta/40;target.triggerMouseEvent(delta,evt.ctrlKey,evt.altKey,evt.shiftKey)};_unload=function(){target.detachEvent(\'onmousewheel\',_wheel);win.detachEvent(\'onunload\',_unload)};target.attachEvent(\'onmousewheel\',_wheel);win.attachEvent(\'onunload\',_unload)}};SWFWheel.browser=(function(){var ua=nav.userAgent.toLowerCase(),pl=nav.platform.toLowerCase(),version,pv=[0,0,0];if(nav.plugins&&nav.plugins[\'Shockwave Flash\']){version=nav.plugins[\'Shockwave Flash\'].description.replace(/^.*\\s+(\\S+\\s+\\S+$)/,\'$1\');pv[0]=parseInt(version.replace(/^(.*)\\..*$/,\'$1\'),10);pv[1]=parseInt(version.replace(/^.*\\.(.*)\\s.*$/,\'$1\'),10);pv[2]=/[a-z-A-Z]/.test(version)?parseInt(version.replace(/^.*[a-zA-Z]+(.*)$/,\'$1\'),10):0}else if(win.ActiveXObject){try{var axo=new ActiveXObject(\'ShockwaveFlash.ShockwaveFlash\');if(axo){version=axo.GetVariable(\'$version\');if(version){version=version.split(\' \')[1].split(\',\');pv[0]=parseInt(version[0],10);pv[1]=parseInt(version[1],10);pv[2]=parseInt(version[2],10)}}}catch(e){}}return{win:pl?/win/.test(pl):/win/.test(ua),mac:pl?/mac/.test(pl):/mac/.test(ua),playerVersion:pv,version:(ua.match(/.+(?:rv|it|ra|ie)[/:\\s]([\\d.]+)/)||[0,\'0\'])[1],chrome:/chrome/.test(ua),stainless:/stainless/.test(ua),safari:/webkit/.test(ua)&&!/(chrome|stainless)/.test(ua),opera:/opera/.test(ua),msie:/msie/.test(ua)&&!/opera/.test(ua),mozilla:/mozilla/.test(ua)&&!/(compatible|webkit)/.test(ua)}})();SWFWheel.join=function(id){var t=setInterval(function(){if(SWFWheel.retrieveObject(id)){clearInterval(t);new SWFWheel(id)}},0)};SWFWheel.getState=function(id){var STATE_HACKED=2,STATE_IF_NEEDED=1,STATE_NATIVE=0,br=SWFWheel.browser,fp=br.playerVersion;if(br.mac){if(fp[0]>=10&&fp[1]>=1){if(br.safari||br.stainless)return STATE_NATIVE;else if(br.chrome)return STATE_IF_NEEDED;else return STATE_HACKED}else{return STATE_HACKED}}if(!(fp[0]>=10&&fp[1]>=1)&&SWFWheel.browser.safari)return STATE_HACKED;var el=SWFWheel.retrieveObject(id),name=el.nodeName.toLowerCase(),wmode=\'\';if(name==\'object\'){var k,param,params=el.getElementsByTagName(\'param\'),len=params.length;for(var i=0;i<len;i++){param=params[i];if(param.parentNode!=el)continue;k=param.getAttribute(\'name\');wmode=param.getAttribute(\'value\')||\'\';if(/wmode/i.test(k))break}}else if(name==\'embed\'){var wmode=el.getAttribute(\'wmode\')||\'\'}if(br.msie){if(/transparent/i.test(wmode))return STATE_HACKED;else if(/opaque/i.test(wmode))return STATE_IF_NEEDED;else return STATE_NATIVE}else{if(/opaque|transparent/i.test(wmode))return STATE_HACKED;else return STATE_NATIVE}};SWFWheel.retrieveObject=function(id){var el=doc.getElementById(id);if(!el){var nodes=doc.getElementsByTagName(\'embed\'),len=nodes.length;for(var i=0;i<len;i++){if(nodes[i].getAttribute(\'name\')==id){el=nodes[i];break}}}return el}}";
                              continue loop2;
                           }
                           continue loop3;
                           if(!(_loc2_ && SWFWheel))
                           {
                              return;
                              addr58:
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr58);
      }
      
      public function SWFWheel()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function initialize(param1:Stage) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(available);
            if(_loc3_)
            {
               §§push(!§§pop());
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        loop2:
                        while(!§§pop())
                        {
                           while(true)
                           {
                              § !@§ = param1;
                              while(true)
                              {
                                 ExternalInterface.call(§8!Y§);
                                 while(true)
                                 {
                                    ExternalInterface.call(§0!6§,ExternalInterface.objectID);
                                    while(_loc3_ || param1)
                                    {
                                       ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
                                       while(true)
                                       {
                                          §3!`§ = ExternalInterface.call(§9!!§,ExternalInterface.objectID);
                                          §§goto(addr97);
                                       }
                                    }
                                    addr163:
                                    addr162:
                                    while(true)
                                    {
                                       §§push(isReady);
                                       if(!_loc2_)
                                       {
                                          if(_loc2_)
                                          {
                                             break;
                                          }
                                          continue loop0;
                                       }
                                       continue loop2;
                                    }
                                    while(true)
                                    {
                                       §§pop();
                                       §§goto(addr163);
                                    }
                                 }
                              }
                           }
                        }
                        return;
                     }
                     addr152:
                  }
               }
            }
            §§goto(addr162);
         }
         addr97:
         loop10:
         while(true)
         {
            if(§3!`§ != §`+§)
            {
               while(true)
               {
                  ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
                  if(_loc2_ && _loc2_)
                  {
                     continue loop10;
                  }
                  if(_loc3_ || SWFWheel)
                  {
                     if(!_loc2_)
                     {
                        if(!_loc2_)
                        {
                           break loop10;
                        }
                        continue loop4;
                     }
                     continue loop7;
                  }
                  addr88:
               }
               continue loop3;
            }
            if(!_loc2_)
            {
               if(!_loc2_)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     return;
                  }
                  break loop2;
               }
               continue loop5;
            }
            continue loop6;
         }
      }
      
      public static function get isReady() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§ !@§ == null);
         if(_loc1_)
         {
            return !§§pop();
         }
      }
      
      public static function get available() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§§newactivation());
         if(_loc3_ || _loc3_)
         {
            §§push(false);
            if(!_loc4_)
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc3_)
               {
                  if(!ExternalInterface.available)
                  {
                     if(!_loc4_)
                     {
                        addr49:
                        §§push(§§newactivation());
                        if(!(_loc4_ && _loc3_))
                        {
                           return §§pop().§§slot[1];
                        }
                        addr78:
                        §§pop().§§slot[1] = Boolean(Boolean(ExternalInterface.call("function(){return true;}")));
                        addr93:
                        return f;
                        addr72:
                     }
                     else
                     {
                        try
                        {
                           addr71:
                           §§goto(addr72);
                        }
                        catch(e:Error)
                        {
                        }
                        §§goto(addr93);
                        §§push(§§newactivation());
                     }
                     e = §§pop();
                     §§goto(addr93);
                  }
                  §§goto(addr71);
               }
               §§goto(addr49);
            }
         }
         §§goto(addr78);
      }
      
      public static function get state() : int
      {
         return §3!`§;
      }
      
      public static function get §&m§() : Boolean
      {
         return §^`§;
      }
      
      public static function set §&m§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §^`§ = param1;
         }
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc7_:InteractiveObject = null;
         if(_loc9_)
         {
            §§push(§3!`§);
            loop0:
            while(true)
            {
               §§push(§`+§);
               loop1:
               while(true)
               {
                  if(§§pop() != §§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§push(§3!`§);
                        if(_loc10_)
                        {
                           continue loop0;
                        }
                        §§push(§?e§);
                        if(!(_loc9_ || param2))
                        {
                           continue loop1;
                        }
                        §§push(§§pop() == §§pop());
                        if(_loc9_)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 §§goto(addr63);
                              }
                              addr62:
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc9_)
                                 {
                                    if(!(_loc10_ && param3))
                                    {
                                       break loop2;
                                    }
                                    continue loop2;
                                 }
                                 if(_loc9_)
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                    continue loop2;
                                 }
                                 addr63:
                                 §§goto(addr84);
                              }
                              break;
                              §§goto(addr80);
                           }
                           var _loc5_:Array;
                           var _loc6_:DisplayObject = (_loc5_ = § !@§.getObjectsUnderPoint(new Point(§ !@§.mouseX,§ !@§.mouseY))).pop() as DisplayObject;
                           addr118:
                           if(_loc6_ != null)
                           {
                              if(!(_loc7_ = _loc6_ as InteractiveObject))
                              {
                                 _loc6_ = _loc6_.parent;
                                 §§goto(addr118);
                              }
                              if(_loc9_)
                              {
                                 §§goto(addr121);
                              }
                              §§goto(addr125);
                           }
                           addr121:
                           if(!_loc7_)
                           {
                              if(_loc9_)
                              {
                                 addr125:
                                 return;
                              }
                           }
                           var _loc8_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL,true,false,_loc7_.mouseX,_loc7_.mouseY,null,param2,param3,param4,false,int(param1));
                           if(_loc9_ || param1)
                           {
                              _loc7_.dispatchEvent(_loc8_);
                           }
                           return;
                        }
                        §§goto(addr62);
                     }
                     return;
                  }
                  addr84:
                  while(!(_loc10_ && param1))
                  {
                     while(true)
                     {
                        §§push(§^`§);
                        if(_loc9_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(!_loc9_)
                        {
                           continue loop5;
                        }
                     }
                     continue loop5;
                  }
                  return;
               }
            }
         }
         §§goto(addr80);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §^`§;
      }
   }
}
