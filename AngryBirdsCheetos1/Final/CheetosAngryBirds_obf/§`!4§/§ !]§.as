package §`!4§
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   
   public class § !]§
   {
      
      public static const VERSION:String = "1.5";
      
      public static const §=!?§:int = 0;
      
      public static const §^!2§:int = 1;
      
      public static const §^! §:int = 2;
      
      public static const §#Y§:String = "SWFWheel.join";
      
      public static const §=!<§:String = "SWFWheel.getState";
      
      public static const §!Q§:String = "function(){if(window.SWFWheel)return;var win=window,doc=document,nav=navigator;var SWFWheel=window.SWFWheel=function(id){this.setUp(id);if(SWFWheel.browser.msie)this.bind4msie();else this.bind()};SWFWheel.prototype={setUp:function(id){var el=SWFWheel.retrieveObject(id);if(el.nodeName.toLowerCase()==\'embed\'||SWFWheel.browser.safari)el=el.parentNode;this.target=el;this.eventType=SWFWheel.browser.mozilla?\'DOMMouseScroll\':\'mousewheel\'},bind:function(){this.target.addEventListener(this.eventType,function(evt){var target,name,delta=0;if(/XPCNativeWrapper/.test(evt.toString())){var k=evt.target.getAttribute(\'id\')||evt.target.getAttribute(\'name\');if(!k)return;target=SWFWheel.retrieveObject(k)}else{target=evt.target}name=target.nodeName.toLowerCase();if(name!=\'object\'&&name!=\'embed\')return;if(!target.checkBrowserScroll()){evt.preventDefault();evt.returnValue=false}if(!target.triggerMouseEvent)return;switch(true){case SWFWheel.browser.mozilla:delta=-evt.detail;break;case SWFWheel.browser.opera:delta=evt.wheelDelta/40;break;default:delta=evt.wheelDelta/80;break}target.triggerMouseEvent(delta,evt.ctrlKey,evt.altKey,evt.shiftKey)},false)},bind4msie:function(){var _wheel,_unload,target=this.target;_wheel=function(){var evt=win.event,delta=0,name=evt.srcElement.nodeName.toLowerCase();if(name!=\'object\'&&name!=\'embed\')return;if(!target.checkBrowserScroll())evt.returnValue=false;if(!target.triggerMouseEvent)return;delta=evt.wheelDelta/40;target.triggerMouseEvent(delta,evt.ctrlKey,evt.altKey,evt.shiftKey)};_unload=function(){target.detachEvent(\'onmousewheel\',_wheel);win.detachEvent(\'onunload\',_unload)};target.attachEvent(\'onmousewheel\',_wheel);win.attachEvent(\'onunload\',_unload)}};SWFWheel.browser=(function(){var ua=nav.userAgent.toLowerCase(),pl=nav.platform.toLowerCase(),version,pv=[0,0,0];if(nav.plugins&&nav.plugins[\'Shockwave Flash\']){version=nav.plugins[\'Shockwave Flash\'].description.replace(/^.*\\s+(\\S+\\s+\\S+$)/,\'$1\');pv[0]=parseInt(version.replace(/^(.*)\\..*$/,\'$1\'),10);pv[1]=parseInt(version.replace(/^.*\\.(.*)\\s.*$/,\'$1\'),10);pv[2]=/[a-z-A-Z]/.test(version)?parseInt(version.replace(/^.*[a-zA-Z]+(.*)$/,\'$1\'),10):0}else if(win.ActiveXObject){try{var axo=new ActiveXObject(\'ShockwaveFlash.ShockwaveFlash\');if(axo){version=axo.GetVariable(\'$version\');if(version){version=version.split(\' \')[1].split(\',\');pv[0]=parseInt(version[0],10);pv[1]=parseInt(version[1],10);pv[2]=parseInt(version[2],10)}}}catch(e){}}return{win:pl?/win/.test(pl):/win/.test(ua),mac:pl?/mac/.test(pl):/mac/.test(ua),playerVersion:pv,version:(ua.match(/.+(?:rv|it|ra|ie)[/:\\s]([\\d.]+)/)||[0,\'0\'])[1],chrome:/chrome/.test(ua),stainless:/stainless/.test(ua),safari:/webkit/.test(ua)&&!/(chrome|stainless)/.test(ua),opera:/opera/.test(ua),msie:/msie/.test(ua)&&!/opera/.test(ua),mozilla:/mozilla/.test(ua)&&!/(compatible|webkit)/.test(ua)}})();SWFWheel.join=function(id){var t=setInterval(function(){if(SWFWheel.retrieveObject(id)){clearInterval(t);new SWFWheel(id)}},0)};SWFWheel.getState=function(id){var STATE_HACKED=2,STATE_IF_NEEDED=1,STATE_NATIVE=0,br=SWFWheel.browser,fp=br.playerVersion;if(br.mac){if(fp[0]>=10&&fp[1]>=1){if(br.safari||br.stainless)return STATE_NATIVE;else if(br.chrome)return STATE_IF_NEEDED;else return STATE_HACKED}else{return STATE_HACKED}}if(!(fp[0]>=10&&fp[1]>=1)&&SWFWheel.browser.safari)return STATE_HACKED;var el=SWFWheel.retrieveObject(id),name=el.nodeName.toLowerCase(),wmode=\'\';if(name==\'object\'){var k,param,params=el.getElementsByTagName(\'param\'),len=params.length;for(var i=0;i<len;i++){param=params[i];if(param.parentNode!=el)continue;k=param.getAttribute(\'name\');wmode=param.getAttribute(\'value\')||\'\';if(/wmode/i.test(k))break}}else if(name==\'embed\'){var wmode=el.getAttribute(\'wmode\')||\'\'}if(br.msie){if(/transparent/i.test(wmode))return STATE_HACKED;else if(/opaque/i.test(wmode))return STATE_IF_NEEDED;else return STATE_NATIVE}else{if(/opaque|transparent/i.test(wmode))return STATE_HACKED;else return STATE_NATIVE}};SWFWheel.retrieveObject=function(id){var el=doc.getElementById(id);if(!el){var nodes=doc.getElementsByTagName(\'embed\'),len=nodes.length;for(var i=0;i<len;i++){if(nodes[i].getAttribute(\'name\')==id){el=nodes[i];break}}}return el}}";
      
      private static var §0!>§:Stage;
      
      private static var § !U§:int;
      
      private static var §-^§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && § !]§))
         {
            VERSION = "1.5";
         }
         loop0:
         while(true)
         {
            §=!?§ = 0;
            loop1:
            while(true)
            {
               §^!2§ = 1;
               while(true)
               {
                  §^! § = 2;
                  continue loop0;
                  addr80:
                  if(_loc1_ || _loc1_)
                  {
                     continue loop1;
                  }
               }
            }
         }
      }
      
      public function § !]§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §&O§(param1:Stage) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(available);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     do
                     {
                        if(!§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §0!>§ = param1;
                              while(!(_loc3_ && param1))
                              {
                                 ExternalInterface.call(§!Q§);
                                 while(_loc2_ || _loc2_)
                                 {
                                    ExternalInterface.call(§#Y§,ExternalInterface.objectID);
                                    while(!_loc3_)
                                    {
                                       ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
                                       loop9:
                                       while(true)
                                       {
                                          § !U§ = ExternalInterface.call(§=!<§,ExternalInterface.objectID);
                                          loop10:
                                          while(true)
                                          {
                                             if(§ !U§ == §=!?§)
                                             {
                                                if(!(_loc3_ && § !]§))
                                                {
                                                   continue loop9;
                                                }
                                                continue;
                                             }
                                             addr23:
                                             while(true)
                                             {
                                                ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
                                                if(_loc3_)
                                                {
                                                   continue loop10;
                                                }
                                                if(!(_loc3_ && § !]§))
                                                {
                                                   return;
                                                }
                                             }
                                          }
                                       }
                                       if(!(_loc3_ && param1))
                                       {
                                          return;
                                       }
                                    }
                                    continue loop3;
                                 }
                              }
                              loop7:
                              while(true)
                              {
                                 §§push(isReady);
                                 if(!_loc3_)
                                 {
                                    continue loop0;
                                 }
                                 addr144:
                                 if(_loc2_ || § !]§)
                                 {
                                    continue loop2;
                                 }
                                 addr171:
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop7;
                                 }
                              }
                              continue loop0;
                           }
                        }
                        return;
                     }
                     while(_loc2_);
                     
                     continue;
                  }
                  §§goto(addr171);
               }
            }
         }
         §§goto(addr98);
      }
      
      public static function get isReady() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§0!>§ == null);
         if(_loc2_ || _loc1_)
         {
            return !§§pop();
         }
      }
      
      public static function get available() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§§newactivation());
         if(_loc3_ || § !]§)
         {
            §§push(false);
            if(!(_loc4_ && _loc3_))
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc3_ || _loc3_)
               {
                  if(!ExternalInterface.available)
                  {
                     if(!(_loc4_ && § !]§))
                     {
                        §§push(§§newactivation());
                        if(_loc3_)
                        {
                           §§goto(addr67);
                        }
                        else
                        {
                           addr83:
                           §§pop().§§slot[1] = Boolean(Boolean(ExternalInterface.call("function(){return true;}")));
                           addr77:
                        }
                     }
                     §§goto(addr108);
                  }
                  else
                  {
                     try
                     {
                        addr76:
                        §§goto(addr77);
                     }
                     catch(e:Error)
                     {
                     }
                     addr108:
                     return f;
                     §§push(§§newactivation());
                  }
                  e = §§pop();
                  §§goto(addr108);
               }
               §§goto(addr76);
            }
            §§goto(addr83);
         }
         addr67:
         return §§pop().§§slot[1];
      }
      
      public static function get §!U§() : int
      {
         return § !U§;
      }
      
      public static function get §%l§() : Boolean
      {
         return §-^§;
      }
      
      public static function set §%l§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §-^§ = param1;
         }
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc7_:InteractiveObject = null;
         if(!_loc9_)
         {
            §§push(§ !U§);
            loop0:
            while(true)
            {
               §§push(§=!?§);
               loop1:
               while(§§pop() != §§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§push(§ !U§);
                     if(_loc9_)
                     {
                        break;
                     }
                     §§push(§^!2§);
                     if(_loc9_ && param2)
                     {
                        continue loop1;
                     }
                     §§push(§§pop() == §§pop());
                     if(!_loc9_)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr86:
                              loop5:
                              while(true)
                              {
                                 §§push(§-^§);
                                 if(!_loc9_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(_loc10_ || param3)
                                 {
                                    while(§§pop())
                                    {
                                       if(!_loc9_)
                                       {
                                          if(_loc10_)
                                          {
                                             return;
                                          }
                                          break loop1;
                                       }
                                       if(_loc10_ || param3)
                                       {
                                          if(!(_loc9_ && param3))
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                          }
                                          continue loop2;
                                       }
                                       continue loop5;
                                    }
                                    var _loc5_:Array;
                                    var _loc6_:DisplayObject = (_loc5_ = §0!>§.getObjectsUnderPoint(new Point(§0!>§.mouseX,§0!>§.mouseY))).pop() as DisplayObject;
                                    addr124:
                                    if(_loc6_ != null)
                                    {
                                       if(!(_loc7_ = _loc6_ as InteractiveObject))
                                       {
                                          _loc6_ = _loc6_.parent;
                                          §§goto(addr124);
                                       }
                                       if(_loc10_)
                                       {
                                          §§goto(addr127);
                                       }
                                       §§goto(addr131);
                                    }
                                    addr127:
                                 }
                                 continue;
                                 if(!_loc7_)
                                 {
                                    if(!_loc9_)
                                    {
                                       addr131:
                                       return;
                                    }
                                 }
                                 var _loc8_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL,true,false,_loc7_.mouseX,_loc7_.mouseY,null,param2,param3,param4,false,int(param1));
                                 if(_loc10_)
                                 {
                                    _loc7_.dispatchEvent(_loc8_);
                                 }
                                 return;
                              }
                           }
                           addr75:
                        }
                        §§goto(addr35);
                     }
                     §§goto(addr75);
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr86);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §-^§;
      }
   }
}
