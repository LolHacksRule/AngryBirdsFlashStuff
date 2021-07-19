package
{
   import §,!'§.§6!L§;
   import flash.events.Event;
   import flash.external.ExternalInterface;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class AngryBirdsCustomCanvas extends §6!L§
   {
       
      
      private const §^!=§:RegExp;
      
      public function AngryBirdsCustomCanvas()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§^!=§ = /^(http|https):\/\/((([\w\-]*)(\.angrybirds\-nestle.appspot\.com))|(angrybirds\-nestle.appspot\.com)|(nestle\.angrybirds\.com))(.*)/;
            do
            {
               super();
               do
               {
                  addEventListener(Event.ADDED_TO_STAGE,this.§?N§);
               }
               while(_loc2_ && _loc2_);
               
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      private function §?N§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            removeEventListener(Event.ADDED_TO_STAGE,this.§?N§);
            do
            {
               new AngryBirdsCustom(this,loaderInfo.parameters.serverVersion,loaderInfo.parameters.serverRoot);
            }
            while(_loc3_);
            
         }
      }
      
      private function §"M§() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var pageURL:String = null;
         try
         {
            §§push(§§newactivation());
            if(!_loc4_)
            {
               §§pop().§§slot[1] = ExternalInterface.call("window.location.href.toString");
               if(!_loc4_)
               {
                  addr76:
                  §§push(false);
                  if(_loc3_)
                  {
                     if(!§§pop())
                     {
                        if(!_loc4_)
                        {
                           §§push(§§newactivation());
                           if(_loc3_)
                           {
                              §§push(§§pop().§§slot[1]);
                              if(_loc3_ || _loc2_)
                              {
                                 §§push(§§pop() == null);
                                 if(!_loc4_)
                                 {
                                    if(!§§pop())
                                    {
                                       if(!_loc4_)
                                       {
                                          §§pop();
                                          if(_loc3_ || _loc3_)
                                          {
                                             addr185:
                                             §§push(pageURL.indexOf(".swf") == -1);
                                             loop0:
                                             while(true)
                                             {
                                                §§push(!§§pop());
                                                addr190:
                                                loop4:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      loop5:
                                                      while(true)
                                                      {
                                                         if(!this.§^!=§.test(pageURL))
                                                         {
                                                            if(_loc4_ && this)
                                                            {
                                                               continue;
                                                            }
                                                            navigateToURL(new URLRequest("http://nestle.angrybirds.com"),"_self");
                                                            if(!(_loc4_ && _loc2_))
                                                            {
                                                               §§push(false);
                                                               break;
                                                               addr178:
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               addr121:
                                                               while(true)
                                                               {
                                                                  §§push(true);
                                                                  if(_loc3_)
                                                                  {
                                                                     if(!(_loc4_ && this))
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                     break;
                                                                  }
                                                                  break loop5;
                                                               }
                                                               §§goto(addr181);
                                                            }
                                                            addr120:
                                                         }
                                                         §§goto(addr181);
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop0;
                                                         }
                                                         continue loop4;
                                                         §§goto(addr178);
                                                      }
                                                      §§goto(addr140);
                                                   }
                                                   if(!_loc4_)
                                                   {
                                                      navigateToURL(new URLRequest("http://nestle.angrybirds.com"),"_self");
                                                   }
                                                   §§goto(addr181);
                                                }
                                             }
                                          }
                                          §§push(false);
                                       }
                                       addr181:
                                       return §§pop();
                                    }
                                    §§goto(addr190);
                                 }
                                 addr140:
                                 return §§pop();
                              }
                           }
                           §§goto(addr185);
                        }
                        else
                        {
                           addr150:
                        }
                        §§goto(addr120);
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr190);
               }
               §§goto(addr150);
            }
         }
         catch(e:Error)
         {
            var _loc2_:* = e;
            if(!_loc4_)
            {
               pageURL == null;
            }
            §§goto(addr76);
         }
         catch(e:SecurityError)
         {
            _loc2_ = e;
            if(!_loc4_)
            {
               pageURL == null;
            }
            §§goto(addr76);
         }
         §§goto(addr185);
      }
   }
}
