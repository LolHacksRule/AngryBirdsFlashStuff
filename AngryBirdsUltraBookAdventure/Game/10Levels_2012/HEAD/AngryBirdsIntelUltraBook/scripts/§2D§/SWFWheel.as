package §2D§
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
      
      public static const §'!Y§:int = 0;
      
      public static const §`i§:int = 1;
      
      public static const §3-§:int = 2;
      
      public static const §;M§:String = "SWFWheel.join";
      
      public static const §9!W§:String = "SWFWheel.getState";
      
      public static const §var §:String = "function(){if(window.SWFWheel)return;var win=window,doc=document,nav=navigator;var SWFWheel=window.SWFWheel=function(id){this.setUp(id);if(SWFWheel.browser.msie)this.bind4msie();else this.bind()};SWFWheel.prototype={setUp:function(id){var el=SWFWheel.retrieveObject(id);if(el.nodeName.toLowerCase()==\'embed\'||SWFWheel.browser.safari)el=el.parentNode;this.target=el;this.eventType=SWFWheel.browser.mozilla?\'DOMMouseScroll\':\'mousewheel\'},bind:function(){this.target.addEventListener(this.eventType,function(evt){var target,name,delta=0;if(/XPCNativeWrapper/.test(evt.toString())){var k=evt.target.getAttribute(\'id\')||evt.target.getAttribute(\'name\');if(!k)return;target=SWFWheel.retrieveObject(k)}else{target=evt.target}name=target.nodeName.toLowerCase();if(name!=\'object\'&&name!=\'embed\')return;if(!target.checkBrowserScroll()){evt.preventDefault();evt.returnValue=false}if(!target.triggerMouseEvent)return;switch(true){case SWFWheel.browser.mozilla:delta=-evt.detail;break;case SWFWheel.browser.opera:delta=evt.wheelDelta/40;break;default:delta=evt.wheelDelta/80;break}target.triggerMouseEvent(delta,evt.ctrlKey,evt.altKey,evt.shiftKey)},false)},bind4msie:function(){var _wheel,_unload,target=this.target;_wheel=function(){var evt=win.event,delta=0,name=evt.srcElement.nodeName.toLowerCase();if(name!=\'object\'&&name!=\'embed\')return;if(!target.checkBrowserScroll())evt.returnValue=false;if(!target.triggerMouseEvent)return;delta=evt.wheelDelta/40;target.triggerMouseEvent(delta,evt.ctrlKey,evt.altKey,evt.shiftKey)};_unload=function(){target.detachEvent(\'onmousewheel\',_wheel);win.detachEvent(\'onunload\',_unload)};target.attachEvent(\'onmousewheel\',_wheel);win.attachEvent(\'onunload\',_unload)}};SWFWheel.browser=(function(){var ua=nav.userAgent.toLowerCase(),pl=nav.platform.toLowerCase(),version,pv=[0,0,0];if(nav.plugins&&nav.plugins[\'Shockwave Flash\']){version=nav.plugins[\'Shockwave Flash\'].description.replace(/^.*\\s+(\\S+\\s+\\S+$)/,\'$1\');pv[0]=parseInt(version.replace(/^(.*)\\..*$/,\'$1\'),10);pv[1]=parseInt(version.replace(/^.*\\.(.*)\\s.*$/,\'$1\'),10);pv[2]=/[a-z-A-Z]/.test(version)?parseInt(version.replace(/^.*[a-zA-Z]+(.*)$/,\'$1\'),10):0}else if(win.ActiveXObject){try{var axo=new ActiveXObject(\'ShockwaveFlash.ShockwaveFlash\');if(axo){version=axo.GetVariable(\'$version\');if(version){version=version.split(\' \')[1].split(\',\');pv[0]=parseInt(version[0],10);pv[1]=parseInt(version[1],10);pv[2]=parseInt(version[2],10)}}}catch(e){}}return{win:pl?/win/.test(pl):/win/.test(ua),mac:pl?/mac/.test(pl):/mac/.test(ua),playerVersion:pv,version:(ua.match(/.+(?:rv|it|ra|ie)[/:\\s]([\\d.]+)/)||[0,\'0\'])[1],chrome:/chrome/.test(ua),stainless:/stainless/.test(ua),safari:/webkit/.test(ua)&&!/(chrome|stainless)/.test(ua),opera:/opera/.test(ua),msie:/msie/.test(ua)&&!/opera/.test(ua),mozilla:/mozilla/.test(ua)&&!/(compatible|webkit)/.test(ua)}})();SWFWheel.join=function(id){var t=setInterval(function(){if(SWFWheel.retrieveObject(id)){clearInterval(t);new SWFWheel(id)}},0)};SWFWheel.getState=function(id){var STATE_HACKED=2,STATE_IF_NEEDED=1,STATE_NATIVE=0,br=SWFWheel.browser,fp=br.playerVersion;if(br.mac){if(fp[0]>=10&&fp[1]>=1){if(br.safari||br.stainless)return STATE_NATIVE;else if(br.chrome)return STATE_IF_NEEDED;else return STATE_HACKED}else{return STATE_HACKED}}if(!(fp[0]>=10&&fp[1]>=1)&&SWFWheel.browser.safari)return STATE_HACKED;var el=SWFWheel.retrieveObject(id),name=el.nodeName.toLowerCase(),wmode=\'\';if(name==\'object\'){var k,param,params=el.getElementsByTagName(\'param\'),len=params.length;for(var i=0;i<len;i++){param=params[i];if(param.parentNode!=el)continue;k=param.getAttribute(\'name\');wmode=param.getAttribute(\'value\')||\'\';if(/wmode/i.test(k))break}}else if(name==\'embed\'){var wmode=el.getAttribute(\'wmode\')||\'\'}if(br.msie){if(/transparent/i.test(wmode))return STATE_HACKED;else if(/opaque/i.test(wmode))return STATE_IF_NEEDED;else return STATE_NATIVE}else{if(/opaque|transparent/i.test(wmode))return STATE_HACKED;else return STATE_NATIVE}};SWFWheel.retrieveObject=function(id){var el=doc.getElementById(id);if(!el){var nodes=doc.getElementsByTagName(\'embed\'),len=nodes.length;for(var i=0;i<len;i++){if(nodes[i].getAttribute(\'name\')==id){el=nodes[i];break}}}return el}}";
      
      private static var §,v§:Stage;
      
      private static var §+6§:int;
      
      private static var §7!h§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            VERSION = "1.5";
            while(true)
            {
               §'!Y§ = 0;
               loop1:
               while(!(_loc1_ && _loc2_))
               {
                  §`i§ = 1;
                  while(true)
                  {
                     §3-§ = 2;
                     loop3:
                     for(; _loc2_; if(!(_loc1_ && _loc2_))
                     {
                        if(_loc2_)
                        {
                           return;
                        }
                        continue loop1;
                     })
                     {
                        §;M§ = "SWFWheel.join";
                        while(true)
                        {
                           §9!W§ = "SWFWheel.getState";
                           while(_loc2_ || SWFWheel)
                           {
                              §var § = "function(){if(window.SWFWheel)return;var win=window,doc=document,nav=navigator;var SWFWheel=window.SWFWheel=function(id){this.setUp(id);if(SWFWheel.browser.msie)this.bind4msie();else this.bind()};SWFWheel.prototype={setUp:function(id){var el=SWFWheel.retrieveObject(id);if(el.nodeName.toLowerCase()==\'embed\'||SWFWheel.browser.safari)el=el.parentNode;this.target=el;this.eventType=SWFWheel.browser.mozilla?\'DOMMouseScroll\':\'mousewheel\'},bind:function(){this.target.addEventListener(this.eventType,function(evt){var target,name,delta=0;if(/XPCNativeWrapper/.test(evt.toString())){var k=evt.target.getAttribute(\'id\')||evt.target.getAttribute(\'name\');if(!k)return;target=SWFWheel.retrieveObject(k)}else{target=evt.target}name=target.nodeName.toLowerCase();if(name!=\'object\'&&name!=\'embed\')return;if(!target.checkBrowserScroll()){evt.preventDefault();evt.returnValue=false}if(!target.triggerMouseEvent)return;switch(true){case SWFWheel.browser.mozilla:delta=-evt.detail;break;case SWFWheel.browser.opera:delta=evt.wheelDelta/40;break;default:delta=evt.wheelDelta/80;break}target.triggerMouseEvent(delta,evt.ctrlKey,evt.altKey,evt.shiftKey)},false)},bind4msie:function(){var _wheel,_unload,target=this.target;_wheel=function(){var evt=win.event,delta=0,name=evt.srcElement.nodeName.toLowerCase();if(name!=\'object\'&&name!=\'embed\')return;if(!target.checkBrowserScroll())evt.returnValue=false;if(!target.triggerMouseEvent)return;delta=evt.wheelDelta/40;target.triggerMouseEvent(delta,evt.ctrlKey,evt.altKey,evt.shiftKey)};_unload=function(){target.detachEvent(\'onmousewheel\',_wheel);win.detachEvent(\'onunload\',_unload)};target.attachEvent(\'onmousewheel\',_wheel);win.attachEvent(\'onunload\',_unload)}};SWFWheel.browser=(function(){var ua=nav.userAgent.toLowerCase(),pl=nav.platform.toLowerCase(),version,pv=[0,0,0];if(nav.plugins&&nav.plugins[\'Shockwave Flash\']){version=nav.plugins[\'Shockwave Flash\'].description.replace(/^.*\\s+(\\S+\\s+\\S+$)/,\'$1\');pv[0]=parseInt(version.replace(/^(.*)\\..*$/,\'$1\'),10);pv[1]=parseInt(version.replace(/^.*\\.(.*)\\s.*$/,\'$1\'),10);pv[2]=/[a-z-A-Z]/.test(version)?parseInt(version.replace(/^.*[a-zA-Z]+(.*)$/,\'$1\'),10):0}else if(win.ActiveXObject){try{var axo=new ActiveXObject(\'ShockwaveFlash.ShockwaveFlash\');if(axo){version=axo.GetVariable(\'$version\');if(version){version=version.split(\' \')[1].split(\',\');pv[0]=parseInt(version[0],10);pv[1]=parseInt(version[1],10);pv[2]=parseInt(version[2],10)}}}catch(e){}}return{win:pl?/win/.test(pl):/win/.test(ua),mac:pl?/mac/.test(pl):/mac/.test(ua),playerVersion:pv,version:(ua.match(/.+(?:rv|it|ra|ie)[/:\\s]([\\d.]+)/)||[0,\'0\'])[1],chrome:/chrome/.test(ua),stainless:/stainless/.test(ua),safari:/webkit/.test(ua)&&!/(chrome|stainless)/.test(ua),opera:/opera/.test(ua),msie:/msie/.test(ua)&&!/opera/.test(ua),mozilla:/mozilla/.test(ua)&&!/(compatible|webkit)/.test(ua)}})();SWFWheel.join=function(id){var t=setInterval(function(){if(SWFWheel.retrieveObject(id)){clearInterval(t);new SWFWheel(id)}},0)};SWFWheel.getState=function(id){var STATE_HACKED=2,STATE_IF_NEEDED=1,STATE_NATIVE=0,br=SWFWheel.browser,fp=br.playerVersion;if(br.mac){if(fp[0]>=10&&fp[1]>=1){if(br.safari||br.stainless)return STATE_NATIVE;else if(br.chrome)return STATE_IF_NEEDED;else return STATE_HACKED}else{return STATE_HACKED}}if(!(fp[0]>=10&&fp[1]>=1)&&SWFWheel.browser.safari)return STATE_HACKED;var el=SWFWheel.retrieveObject(id),name=el.nodeName.toLowerCase(),wmode=\'\';if(name==\'object\'){var k,param,params=el.getElementsByTagName(\'param\'),len=params.length;for(var i=0;i<len;i++){param=params[i];if(param.parentNode!=el)continue;k=param.getAttribute(\'name\');wmode=param.getAttribute(\'value\')||\'\';if(/wmode/i.test(k))break}}else if(name==\'embed\'){var wmode=el.getAttribute(\'wmode\')||\'\'}if(br.msie){if(/transparent/i.test(wmode))return STATE_HACKED;else if(/opaque/i.test(wmode))return STATE_IF_NEEDED;else return STATE_NATIVE}else{if(/opaque|transparent/i.test(wmode))return STATE_HACKED;else return STATE_NATIVE}};SWFWheel.retrieveObject=function(id){var el=doc.getElementById(id);if(!el){var nodes=doc.getElementsByTagName(\'embed\'),len=nodes.length;for(var i=0;i<len;i++){if(nodes[i].getAttribute(\'name\')==id){el=nodes[i];break}}}return el}}";
                              do
                              {
                                 §7!h§ = true;
                              }
                              while(!(_loc2_ || _loc1_));
                              
                              if(!(_loc1_ && SWFWheel))
                              {
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr105);
      }
      
      public function SWFWheel()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function initialize(param1:Stage) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(available);
            if(!(_loc2_ && _loc3_))
            {
               §§push(!§§pop());
               if(!(_loc2_ && _loc2_))
               {
                  §§push(Boolean(§§pop()));
               }
               loop0:
               while(true)
               {
                  §§push(§§pop());
                  if(!_loc2_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr194:
                        while(true)
                        {
                           §§push(isReady);
                           if(_loc3_ || SWFWheel)
                           {
                              if(!_loc3_)
                              {
                                 continue loop0;
                              }
                              §§push(Boolean(§§pop()));
                           }
                           if(!_loc3_)
                           {
                              break;
                           }
                           break;
                        }
                     }
                     addr193:
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!_loc2_)
                        {
                           break;
                        }
                        while(true)
                        {
                           addr81:
                           if(!_loc3_)
                           {
                              continue;
                           }
                           loop12:
                           while(true)
                           {
                              ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
                              if(_loc3_ || _loc3_)
                              {
                                 addr44:
                                 if(_loc3_ || param1)
                                 {
                                    if(_loc2_)
                                    {
                                       §§goto(addr194);
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       ExternalInterface.call(§var §);
                                       while(true)
                                       {
                                          ExternalInterface.call(§;M§,ExternalInterface.objectID);
                                          loop6:
                                          while(true)
                                          {
                                             ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
                                             addr114:
                                             loop9:
                                             while(true)
                                             {
                                                §+6§ = ExternalInterface.call(§9!W§,ExternalInterface.objectID);
                                                while(true)
                                                {
                                                   if(§+6§ == §'!Y§)
                                                   {
                                                      if(_loc3_ || param1)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            return;
                                                         }
                                                         continue;
                                                      }
                                                      addr70:
                                                      while(true)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         continue loop9;
                                                      }
                                                      continue loop6;
                                                   }
                                                   continue loop12;
                                                }
                                                continue loop12;
                                             }
                                          }
                                       }
                                       §§goto(addr44);
                                    }
                                    addr138:
                                 }
                                 return;
                              }
                              §§goto(addr70);
                           }
                        }
                     }
                     while(true)
                     {
                        §,v§ = param1;
                        §§goto(addr138);
                     }
                  }
                  return;
               }
            }
            §§goto(addr193);
         }
         §§goto(addr114);
      }
      
      public static function get isReady() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§,v§ == null);
         if(!(_loc1_ && _loc1_))
         {
            return !§§pop();
         }
      }
      
      public static function get available() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§§newactivation());
         if(_loc3_ || _loc2_)
         {
            §§push(false);
            if(!_loc4_)
            {
               §§push(Boolean(§§pop()));
               if(_loc3_)
               {
                  §§pop().§§slot[1] = §§pop();
                  if(!_loc4_)
                  {
                     §§push(!ExternalInterface.available);
                     if(_loc3_ || SWFWheel)
                     {
                        if(§§pop())
                        {
                           if(_loc3_ || SWFWheel)
                           {
                              §§push(§§newactivation());
                              if(!_loc4_)
                              {
                                 §§goto(addr70);
                              }
                              else
                              {
                                 addr96:
                                 §§pop().§§slot[1] = Boolean(Boolean(ExternalInterface.call("function(){return true;}")));
                                 addr89:
                              }
                           }
                           §§goto(addr111);
                        }
                        else
                        {
                           try
                           {
                              addr88:
                              §§goto(addr89);
                           }
                           catch(e:Error)
                           {
                           }
                           addr111:
                           return f;
                           §§push(§§newactivation());
                        }
                        e = §§pop();
                        §§goto(addr111);
                     }
                     addr70:
                     return §§pop().§§slot[1];
                  }
                  §§goto(addr88);
               }
            }
         }
         §§goto(addr96);
      }
      
      public static function get state() : int
      {
         return §+6§;
      }
      
      public static function get §0L§() : Boolean
      {
         return §7!h§;
      }
      
      public static function set §0L§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §7!h§ = param1;
         }
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc7_:InteractiveObject = null;
         if(!_loc10_)
         {
            §§push(§+6§);
            loop0:
            while(true)
            {
               §§push(§'!Y§);
               addr114:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     addr115:
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr51);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §7!h§;
      }
   }
}
