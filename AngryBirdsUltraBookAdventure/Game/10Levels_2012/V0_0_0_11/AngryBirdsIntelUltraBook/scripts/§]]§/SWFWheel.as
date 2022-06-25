package §]]§
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
      
      public static const §`!>§:int = 0;
      
      public static const §'!g§:int = 1;
      
      public static const §]2§:int = 2;
      
      public static const §;J§:String = "SWFWheel.join";
      
      public static const §0!Q§:String = "SWFWheel.getState";
      
      public static const §7T§:String = "function(){if(window.SWFWheel)return;var win=window,doc=document,nav=navigator;var SWFWheel=window.SWFWheel=function(id){this.setUp(id);if(SWFWheel.browser.msie)this.bind4msie();else this.bind()};SWFWheel.prototype={setUp:function(id){var el=SWFWheel.retrieveObject(id);if(el.nodeName.toLowerCase()==\'embed\'||SWFWheel.browser.safari)el=el.parentNode;this.target=el;this.eventType=SWFWheel.browser.mozilla?\'DOMMouseScroll\':\'mousewheel\'},bind:function(){this.target.addEventListener(this.eventType,function(evt){var target,name,delta=0;if(/XPCNativeWrapper/.test(evt.toString())){var k=evt.target.getAttribute(\'id\')||evt.target.getAttribute(\'name\');if(!k)return;target=SWFWheel.retrieveObject(k)}else{target=evt.target}name=target.nodeName.toLowerCase();if(name!=\'object\'&&name!=\'embed\')return;if(!target.checkBrowserScroll()){evt.preventDefault();evt.returnValue=false}if(!target.triggerMouseEvent)return;switch(true){case SWFWheel.browser.mozilla:delta=-evt.detail;break;case SWFWheel.browser.opera:delta=evt.wheelDelta/40;break;default:delta=evt.wheelDelta/80;break}target.triggerMouseEvent(delta,evt.ctrlKey,evt.altKey,evt.shiftKey)},false)},bind4msie:function(){var _wheel,_unload,target=this.target;_wheel=function(){var evt=win.event,delta=0,name=evt.srcElement.nodeName.toLowerCase();if(name!=\'object\'&&name!=\'embed\')return;if(!target.checkBrowserScroll())evt.returnValue=false;if(!target.triggerMouseEvent)return;delta=evt.wheelDelta/40;target.triggerMouseEvent(delta,evt.ctrlKey,evt.altKey,evt.shiftKey)};_unload=function(){target.detachEvent(\'onmousewheel\',_wheel);win.detachEvent(\'onunload\',_unload)};target.attachEvent(\'onmousewheel\',_wheel);win.attachEvent(\'onunload\',_unload)}};SWFWheel.browser=(function(){var ua=nav.userAgent.toLowerCase(),pl=nav.platform.toLowerCase(),version,pv=[0,0,0];if(nav.plugins&&nav.plugins[\'Shockwave Flash\']){version=nav.plugins[\'Shockwave Flash\'].description.replace(/^.*\\s+(\\S+\\s+\\S+$)/,\'$1\');pv[0]=parseInt(version.replace(/^(.*)\\..*$/,\'$1\'),10);pv[1]=parseInt(version.replace(/^.*\\.(.*)\\s.*$/,\'$1\'),10);pv[2]=/[a-z-A-Z]/.test(version)?parseInt(version.replace(/^.*[a-zA-Z]+(.*)$/,\'$1\'),10):0}else if(win.ActiveXObject){try{var axo=new ActiveXObject(\'ShockwaveFlash.ShockwaveFlash\');if(axo){version=axo.GetVariable(\'$version\');if(version){version=version.split(\' \')[1].split(\',\');pv[0]=parseInt(version[0],10);pv[1]=parseInt(version[1],10);pv[2]=parseInt(version[2],10)}}}catch(e){}}return{win:pl?/win/.test(pl):/win/.test(ua),mac:pl?/mac/.test(pl):/mac/.test(ua),playerVersion:pv,version:(ua.match(/.+(?:rv|it|ra|ie)[/:\\s]([\\d.]+)/)||[0,\'0\'])[1],chrome:/chrome/.test(ua),stainless:/stainless/.test(ua),safari:/webkit/.test(ua)&&!/(chrome|stainless)/.test(ua),opera:/opera/.test(ua),msie:/msie/.test(ua)&&!/opera/.test(ua),mozilla:/mozilla/.test(ua)&&!/(compatible|webkit)/.test(ua)}})();SWFWheel.join=function(id){var t=setInterval(function(){if(SWFWheel.retrieveObject(id)){clearInterval(t);new SWFWheel(id)}},0)};SWFWheel.getState=function(id){var STATE_HACKED=2,STATE_IF_NEEDED=1,STATE_NATIVE=0,br=SWFWheel.browser,fp=br.playerVersion;if(br.mac){if(fp[0]>=10&&fp[1]>=1){if(br.safari||br.stainless)return STATE_NATIVE;else if(br.chrome)return STATE_IF_NEEDED;else return STATE_HACKED}else{return STATE_HACKED}}if(!(fp[0]>=10&&fp[1]>=1)&&SWFWheel.browser.safari)return STATE_HACKED;var el=SWFWheel.retrieveObject(id),name=el.nodeName.toLowerCase(),wmode=\'\';if(name==\'object\'){var k,param,params=el.getElementsByTagName(\'param\'),len=params.length;for(var i=0;i<len;i++){param=params[i];if(param.parentNode!=el)continue;k=param.getAttribute(\'name\');wmode=param.getAttribute(\'value\')||\'\';if(/wmode/i.test(k))break}}else if(name==\'embed\'){var wmode=el.getAttribute(\'wmode\')||\'\'}if(br.msie){if(/transparent/i.test(wmode))return STATE_HACKED;else if(/opaque/i.test(wmode))return STATE_IF_NEEDED;else return STATE_NATIVE}else{if(/opaque|transparent/i.test(wmode))return STATE_HACKED;else return STATE_NATIVE}};SWFWheel.retrieveObject=function(id){var el=doc.getElementById(id);if(!el){var nodes=doc.getElementsByTagName(\'embed\'),len=nodes.length;for(var i=0;i<len;i++){if(nodes[i].getAttribute(\'name\')==id){el=nodes[i];break}}}return el}}";
      
      private static var §]!O§:Stage;
      
      private static var §"h§:int;
      
      private static var §5G§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || SWFWheel)
         {
            VERSION = "1.5";
            while(true)
            {
               §`!>§ = 0;
               loop1:
               while(true)
               {
                  §'!g§ = 1;
                  addr122:
                  while(true)
                  {
                     §]2§ = 2;
                     addr83:
                     if(!(_loc1_ && SWFWheel))
                     {
                        continue loop1;
                     }
                  }
               }
               if(_loc1_ && _loc2_)
               {
                  continue;
               }
               §§goto(addr71);
            }
         }
         while(true)
         {
            §;J§ = "SWFWheel.join";
            §§goto(addr112);
            §§goto(addr76);
         }
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
         if(!(_loc2_ && SWFWheel))
         {
            §§push(available);
            if(_loc3_ || SWFWheel)
            {
               §§push(!§§pop());
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(§§pop());
                     if(_loc3_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        loop1:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop2:
                              while(true)
                              {
                                 §]!O§ = param1;
                                 loop3:
                                 while(true)
                                 {
                                    ExternalInterface.call(§7T§);
                                    loop4:
                                    while(!_loc2_)
                                    {
                                       if(_loc3_)
                                       {
                                          while(true)
                                          {
                                             ExternalInterface.call(§;J§,ExternalInterface.objectID);
                                             do
                                             {
                                                ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
                                                loop9:
                                                do
                                                {
                                                   §"h§ = ExternalInterface.call(§0!Q§,ExternalInterface.objectID);
                                                   loop10:
                                                   while(§"h§ == §`!>§)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         if(!(_loc2_ && SWFWheel))
                                                         {
                                                            return;
                                                         }
                                                         continue;
                                                         continue;
                                                      }
                                                      addr65:
                                                      while(_loc3_)
                                                      {
                                                         if(_loc2_ && SWFWheel)
                                                         {
                                                            continue loop3;
                                                         }
                                                         if(!(_loc2_ && _loc3_))
                                                         {
                                                            break loop10;
                                                         }
                                                         addr193:
                                                         while(true)
                                                         {
                                                            §§push(isReady);
                                                            if(!_loc2_)
                                                            {
                                                               addr146:
                                                               if(_loc2_ && _loc2_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            continue loop1;
                                                         }
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            §§goto(addr194);
                                                            §§goto(addr146);
                                                         }
                                                         addr194:
                                                      }
                                                      continue loop4;
                                                   }
                                                   while(true)
                                                   {
                                                      ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
                                                      if(_loc3_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      §§goto(addr65);
                                                   }
                                                }
                                                while(_loc2_ && _loc2_);
                                                
                                             }
                                             while(_loc2_);
                                             
                                             return;
                                          }
                                          addr135:
                                       }
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                           return;
                        }
                        addr166:
                     }
                  }
                  if(_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr166);
               }
            }
            §§goto(addr193);
         }
         §§goto(addr135);
      }
      
      public static function get isReady() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§]!O§ == null);
         if(_loc2_)
         {
            return !§§pop();
         }
      }
      
      public static function get available() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc4_)
         {
            §§push(false);
            if(!(_loc4_ && _loc3_))
            {
               §§push(Boolean(§§pop()));
               if(_loc3_ || SWFWheel)
               {
                  addr39:
                  §§pop().§§slot[1] = §§pop();
                  if(!_loc4_)
                  {
                     §§push(!ExternalInterface.available);
                     if(!_loc4_)
                     {
                        if(§§pop())
                        {
                           if(!_loc4_)
                           {
                              §§push(§§newactivation());
                              if(_loc3_ || SWFWheel)
                              {
                                 §§goto(addr80);
                              }
                              else
                              {
                                 addr91:
                                 §§pop().§§slot[1] = Boolean(Boolean(ExternalInterface.call("function(){return true;}")));
                                 addr106:
                                 return f;
                                 addr84:
                                 addr92:
                              }
                           }
                           else
                           {
                              try
                              {
                                 addr83:
                                 §§goto(addr84);
                              }
                              catch(e:Error)
                              {
                              }
                              §§goto(addr106);
                              §§push(§§newactivation());
                           }
                           e = §§pop();
                           §§goto(addr106);
                        }
                        §§goto(addr83);
                     }
                     §§goto(addr80);
                  }
                  §§goto(addr92);
               }
               §§goto(addr91);
            }
            §§goto(addr39);
         }
         addr80:
         return §§pop().§§slot[1];
      }
      
      public static function get state() : int
      {
         return §"h§;
      }
      
      public static function get §[S§() : Boolean
      {
         return §5G§;
      }
      
      public static function set §[S§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || SWFWheel)
         {
            §5G§ = param1;
         }
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc7_:InteractiveObject = null;
         if(!_loc9_)
         {
            §§push(§"h§);
            loop0:
            while(true)
            {
               §§push(§`!>§);
               addr110:
               while(true)
               {
                  if(§§pop() != §§pop())
                  {
                     continue loop0;
                  }
               }
            }
         }
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §5G§;
      }
   }
}
