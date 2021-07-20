package §_-fv§
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   
   public class §_-eO§
   {
      
      public static const VERSION:String = "1.5";
      
      public static const §_-32§:int = 0;
      
      public static const §_-Vz§:int = 1;
      
      public static const §_-9n§:int = 2;
      
      public static const §_-m0§:String = "SWFWheel.join";
      
      public static const §_-0u§:String = "SWFWheel.getState";
      
      public static const §_-y-§:String = "function(){if(window.SWFWheel)return;var win=window,doc=document,nav=navigator;var SWFWheel=window.SWFWheel=function(id){this.setUp(id);if(SWFWheel.browser.msie)this.bind4msie();else this.bind()};SWFWheel.prototype={setUp:function(id){var el=SWFWheel.retrieveObject(id);if(el.nodeName.toLowerCase()==\'embed\'||SWFWheel.browser.safari)el=el.parentNode;this.target=el;this.eventType=SWFWheel.browser.mozilla?\'DOMMouseScroll\':\'mousewheel\'},bind:function(){this.target.addEventListener(this.eventType,function(evt){var target,name,delta=0;if(/XPCNativeWrapper/.test(evt.toString())){var k=evt.target.getAttribute(\'id\')||evt.target.getAttribute(\'name\');if(!k)return;target=SWFWheel.retrieveObject(k)}else{target=evt.target}name=target.nodeName.toLowerCase();if(name!=\'object\'&&name!=\'embed\')return;if(!target.checkBrowserScroll()){evt.preventDefault();evt.returnValue=false}if(!target.triggerMouseEvent)return;switch(true){case SWFWheel.browser.mozilla:delta=-evt.detail;break;case SWFWheel.browser.opera:delta=evt.wheelDelta/40;break;default:delta=evt.wheelDelta/80;break}target.triggerMouseEvent(delta,evt.ctrlKey,evt.altKey,evt.shiftKey)},false)},bind4msie:function(){var _wheel,_unload,target=this.target;_wheel=function(){var evt=win.event,delta=0,name=evt.srcElement.nodeName.toLowerCase();if(name!=\'object\'&&name!=\'embed\')return;if(!target.checkBrowserScroll())evt.returnValue=false;if(!target.triggerMouseEvent)return;delta=evt.wheelDelta/40;target.triggerMouseEvent(delta,evt.ctrlKey,evt.altKey,evt.shiftKey)};_unload=function(){target.detachEvent(\'onmousewheel\',_wheel);win.detachEvent(\'onunload\',_unload)};target.attachEvent(\'onmousewheel\',_wheel);win.attachEvent(\'onunload\',_unload)}};SWFWheel.browser=(function(){var ua=nav.userAgent.toLowerCase(),pl=nav.platform.toLowerCase(),version,pv=[0,0,0];if(nav.plugins&&nav.plugins[\'Shockwave Flash\']){version=nav.plugins[\'Shockwave Flash\'].description.replace(/^.*\\s+(\\S+\\s+\\S+$)/,\'$1\');pv[0]=parseInt(version.replace(/^(.*)\\..*$/,\'$1\'),10);pv[1]=parseInt(version.replace(/^.*\\.(.*)\\s.*$/,\'$1\'),10);pv[2]=/[a-z-A-Z]/.test(version)?parseInt(version.replace(/^.*[a-zA-Z]+(.*)$/,\'$1\'),10):0}else if(win.ActiveXObject){try{var axo=new ActiveXObject(\'ShockwaveFlash.ShockwaveFlash\');if(axo){version=axo.GetVariable(\'$version\');if(version){version=version.split(\' \')[1].split(\',\');pv[0]=parseInt(version[0],10);pv[1]=parseInt(version[1],10);pv[2]=parseInt(version[2],10)}}}catch(e){}}return{win:pl?/win/.test(pl):/win/.test(ua),mac:pl?/mac/.test(pl):/mac/.test(ua),playerVersion:pv,version:(ua.match(/.+(?:rv|it|ra|ie)[/:\\s]([\\d.]+)/)||[0,\'0\'])[1],chrome:/chrome/.test(ua),stainless:/stainless/.test(ua),safari:/webkit/.test(ua)&&!/(chrome|stainless)/.test(ua),opera:/opera/.test(ua),msie:/msie/.test(ua)&&!/opera/.test(ua),mozilla:/mozilla/.test(ua)&&!/(compatible|webkit)/.test(ua)}})();SWFWheel.join=function(id){var t=setInterval(function(){if(SWFWheel.retrieveObject(id)){clearInterval(t);new SWFWheel(id)}},0)};SWFWheel.getState=function(id){var STATE_HACKED=2,STATE_IF_NEEDED=1,STATE_NATIVE=0,br=SWFWheel.browser,fp=br.playerVersion;if(br.mac){if(fp[0]>=10&&fp[1]>=1){if(br.safari||br.stainless)return STATE_NATIVE;else if(br.chrome)return STATE_IF_NEEDED;else return STATE_HACKED}else{return STATE_HACKED}}if(!(fp[0]>=10&&fp[1]>=1)&&SWFWheel.browser.safari)return STATE_HACKED;var el=SWFWheel.retrieveObject(id),name=el.nodeName.toLowerCase(),wmode=\'\';if(name==\'object\'){var k,param,params=el.getElementsByTagName(\'param\'),len=params.length;for(var i=0;i<len;i++){param=params[i];if(param.parentNode!=el)continue;k=param.getAttribute(\'name\');wmode=param.getAttribute(\'value\')||\'\';if(/wmode/i.test(k))break}}else if(name==\'embed\'){var wmode=el.getAttribute(\'wmode\')||\'\'}if(br.msie){if(/transparent/i.test(wmode))return STATE_HACKED;else if(/opaque/i.test(wmode))return STATE_IF_NEEDED;else return STATE_NATIVE}else{if(/opaque|transparent/i.test(wmode))return STATE_HACKED;else return STATE_NATIVE}};SWFWheel.retrieveObject=function(id){var el=doc.getElementById(id);if(!el){var nodes=doc.getElementsByTagName(\'embed\'),len=nodes.length;for(var i=0;i<len;i++){if(nodes[i].getAttribute(\'name\')==id){el=nodes[i];break}}}return el}}";
      
      private static var §_-zs§:Stage;
      
      private static var §_-6j§:int;
      
      private static var §_-ZC§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §_-y-§ = "function(){if(window.SWFWheel)return;var win=window,doc=document,nav=navigator;var SWFWheel=window.SWFWheel=function(id){this.setUp(id);if(SWFWheel.browser.msie)this.bind4msie();else this.bind()};SWFWheel.prototype={setUp:function(id){var el=SWFWheel.retrieveObject(id);if(el.nodeName.toLowerCase()==\'embed\'||SWFWheel.browser.safari)el=el.parentNode;this.target=el;this.eventType=SWFWheel.browser.mozilla?\'DOMMouseScroll\':\'mousewheel\'},bind:function(){this.target.addEventListener(this.eventType,function(evt){var target,name,delta=0;if(/XPCNativeWrapper/.test(evt.toString())){var k=evt.target.getAttribute(\'id\')||evt.target.getAttribute(\'name\');if(!k)return;target=SWFWheel.retrieveObject(k)}else{target=evt.target}name=target.nodeName.toLowerCase();if(name!=\'object\'&&name!=\'embed\')return;if(!target.checkBrowserScroll()){evt.preventDefault();evt.returnValue=false}if(!target.triggerMouseEvent)return;switch(true){case SWFWheel.browser.mozilla:delta=-evt.detail;break;case SWFWheel.browser.opera:delta=evt.wheelDelta/40;break;default:delta=evt.wheelDelta/80;break}target.triggerMouseEvent(delta,evt.ctrlKey,evt.altKey,evt.shiftKey)},false)},bind4msie:function(){var _wheel,_unload,target=this.target;_wheel=function(){var evt=win.event,delta=0,name=evt.srcElement.nodeName.toLowerCase();if(name!=\'object\'&&name!=\'embed\')return;if(!target.checkBrowserScroll())evt.returnValue=false;if(!target.triggerMouseEvent)return;delta=evt.wheelDelta/40;target.triggerMouseEvent(delta,evt.ctrlKey,evt.altKey,evt.shiftKey)};_unload=function(){target.detachEvent(\'onmousewheel\',_wheel);win.detachEvent(\'onunload\',_unload)};target.attachEvent(\'onmousewheel\',_wheel);win.attachEvent(\'onunload\',_unload)}};SWFWheel.browser=(function(){var ua=nav.userAgent.toLowerCase(),pl=nav.platform.toLowerCase(),version,pv=[0,0,0];if(nav.plugins&&nav.plugins[\'Shockwave Flash\']){version=nav.plugins[\'Shockwave Flash\'].description.replace(/^.*\\s+(\\S+\\s+\\S+$)/,\'$1\');pv[0]=parseInt(version.replace(/^(.*)\\..*$/,\'$1\'),10);pv[1]=parseInt(version.replace(/^.*\\.(.*)\\s.*$/,\'$1\'),10);pv[2]=/[a-z-A-Z]/.test(version)?parseInt(version.replace(/^.*[a-zA-Z]+(.*)$/,\'$1\'),10):0}else if(win.ActiveXObject){try{var axo=new ActiveXObject(\'ShockwaveFlash.ShockwaveFlash\');if(axo){version=axo.GetVariable(\'$version\');if(version){version=version.split(\' \')[1].split(\',\');pv[0]=parseInt(version[0],10);pv[1]=parseInt(version[1],10);pv[2]=parseInt(version[2],10)}}}catch(e){}}return{win:pl?/win/.test(pl):/win/.test(ua),mac:pl?/mac/.test(pl):/mac/.test(ua),playerVersion:pv,version:(ua.match(/.+(?:rv|it|ra|ie)[/:\\s]([\\d.]+)/)||[0,\'0\'])[1],chrome:/chrome/.test(ua),stainless:/stainless/.test(ua),safari:/webkit/.test(ua)&&!/(chrome|stainless)/.test(ua),opera:/opera/.test(ua),msie:/msie/.test(ua)&&!/opera/.test(ua),mozilla:/mozilla/.test(ua)&&!/(compatible|webkit)/.test(ua)}})();SWFWheel.join=function(id){var t=setInterval(function(){if(SWFWheel.retrieveObject(id)){clearInterval(t);new SWFWheel(id)}},0)};SWFWheel.getState=function(id){var STATE_HACKED=2,STATE_IF_NEEDED=1,STATE_NATIVE=0,br=SWFWheel.browser,fp=br.playerVersion;if(br.mac){if(fp[0]>=10&&fp[1]>=1){if(br.safari||br.stainless)return STATE_NATIVE;else if(br.chrome)return STATE_IF_NEEDED;else return STATE_HACKED}else{return STATE_HACKED}}if(!(fp[0]>=10&&fp[1]>=1)&&SWFWheel.browser.safari)return STATE_HACKED;var el=SWFWheel.retrieveObject(id),name=el.nodeName.toLowerCase(),wmode=\'\';if(name==\'object\'){var k,param,params=el.getElementsByTagName(\'param\'),len=params.length;for(var i=0;i<len;i++){param=params[i];if(param.parentNode!=el)continue;k=param.getAttribute(\'name\');wmode=param.getAttribute(\'value\')||\'\';if(/wmode/i.test(k))break}}else if(name==\'embed\'){var wmode=el.getAttribute(\'wmode\')||\'\'}if(br.msie){if(/transparent/i.test(wmode))return STATE_HACKED;else if(/opaque/i.test(wmode))return STATE_IF_NEEDED;else return STATE_NATIVE}else{if(/opaque|transparent/i.test(wmode))return STATE_HACKED;else return STATE_NATIVE}};SWFWheel.retrieveObject=function(id){var el=doc.getElementById(id);if(!el){var nodes=doc.getElementsByTagName(\'embed\'),len=nodes.length;for(var i=0;i<len;i++){if(nodes[i].getAttribute(\'name\')==id){el=nodes[i];break}}}return el}}";
            if(!(_loc2_ && §_-eO§))
            {
               addr62:
               §_-ZC§ = true;
            }
            return;
         }
         §§goto(addr62);
      }
      
      public function §_-eO§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §_-oA§(param1:Stage) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(available);
         if(!(_loc3_ && _loc3_))
         {
            §§push(!§§pop());
            if(!_loc3_)
            {
               addr24:
               if(!§§pop())
               {
                  if(!_loc3_)
                  {
                     §§pop();
                     §§push(isReady);
                     if(_loc2_ || _loc2_)
                     {
                        addr37:
                        §§push(Boolean(§§pop()));
                     }
                  }
               }
               if(§§pop())
               {
                  return;
               }
               §_-zs§ = param1;
               ExternalInterface.call(§_-y-§);
               if(!_loc3_)
               {
                  ExternalInterface.call(§_-m0§,ExternalInterface.objectID);
                  ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
                  if(!_loc3_)
                  {
                     §§goto(addr68);
                  }
                  §§goto(addr102);
               }
               addr68:
               §_-6j§ = ExternalInterface.call(§_-0u§,ExternalInterface.objectID);
               if(!(_loc3_ && _loc2_))
               {
                  if(§_-6j§ == §_-32§)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        §§goto(addr99);
                     }
                  }
                  else
                  {
                     addr102:
                     ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
                  }
                  return;
               }
               addr99:
               return;
            }
            §§goto(addr37);
         }
         §§goto(addr24);
      }
      
      public static function get isReady() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§_-zs§ == null);
         if(!_loc1_)
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      public static function get available() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§§newactivation());
         if(_loc3_)
         {
            §§push(false);
            if(!_loc4_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!(_loc4_ && §_-eO§))
               {
                  if(!ExternalInterface.available)
                  {
                     if(_loc3_)
                     {
                        §§push(§§newactivation());
                        if(!_loc4_)
                        {
                           §§goto(addr46);
                        }
                        else
                        {
                           addr62:
                           §§pop().§§slot[1] = Boolean(Boolean(ExternalInterface.call("function(){return true;}")));
                           addr56:
                        }
                     }
                     §§goto(addr84);
                  }
                  else
                  {
                     try
                     {
                        addr55:
                        §§goto(addr56);
                     }
                     catch(e:Error)
                     {
                     }
                     addr84:
                     return f;
                     §§push(§§newactivation());
                  }
                  e = §§pop();
                  §§goto(addr84);
               }
               §§goto(addr55);
            }
            §§goto(addr62);
         }
         addr46:
         return §§pop().§§slot[1];
      }
      
      public static function get §_-Yq§() : int
      {
         return §_-6j§;
      }
      
      public static function get §_-Ay§() : Boolean
      {
         return §_-ZC§;
      }
      
      public static function set §_-Ay§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §_-ZC§ = param1;
         }
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc7_:InteractiveObject = null;
         if(_loc9_)
         {
            §§push(§_-6j§);
            if(_loc9_)
            {
               §§push(§_-32§);
               if(!(_loc10_ && param1))
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc9_)
                     {
                        return;
                     }
                     §§goto(addr57);
                  }
                  else
                  {
                     addr37:
                     §§push(§_-6j§ == §_-Vz§);
                     if(!_loc10_)
                     {
                        if(§§pop())
                        {
                           if(_loc9_ || §_-eO§)
                           {
                              §§pop();
                              if(_loc9_ || param3)
                              {
                                 §§goto(addr57);
                              }
                              §§goto(addr69);
                           }
                        }
                        addr57:
                        §§push(§_-ZC§);
                        if(_loc9_)
                        {
                           addr60:
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           if(!(_loc10_ && param1))
                           {
                              addr69:
                              return;
                           }
                           var _loc5_:Array;
                           var _loc6_:DisplayObject = (_loc5_ = §_-zs§.getObjectsUnderPoint(new Point(§_-zs§.mouseX,§_-zs§.mouseY))).pop() as DisplayObject;
                           §§goto(addr70);
                        }
                        §§goto(addr70);
                     }
                  }
                  §§goto(addr60);
               }
            }
            §§goto(addr37);
         }
         addr70:
         while(_loc6_ != null)
         {
            if(_loc7_ = _loc6_ as InteractiveObject)
            {
               if(!(_loc10_ && param1))
               {
                  break;
               }
               §§goto(addr121);
            }
            _loc6_ = _loc6_.parent;
         }
         if(!_loc7_)
         {
            if(_loc9_)
            {
               addr121:
               return;
            }
         }
         var _loc8_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL,true,false,_loc7_.mouseX,_loc7_.mouseY,null,param2,param3,param4,false,int(param1));
         if(!(_loc10_ && param2))
         {
            _loc7_.dispatchEvent(_loc8_);
         }
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §_-ZC§;
      }
   }
}
