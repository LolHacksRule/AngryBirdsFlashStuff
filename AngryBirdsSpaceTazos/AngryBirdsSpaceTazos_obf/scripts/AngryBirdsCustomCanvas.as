package
{
   import §#!b§.§"!"§;
   import flash.external.ExternalInterface;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class AngryBirdsCustomCanvas extends §"!"§
   {
       
      
      private const §4Q§:RegExp;
      
      public function AngryBirdsCustomCanvas()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§4Q§ = /^(http|https):\/\/((([\w\-]*)(\.angrybirds\-spacetazos.appspot\.com))|(angrybirds\-spacetazos.appspot\.com)|(tazos\.angrybirds\.com))(.*)/;
         }
         loop0:
         while(true)
         {
            super();
            while(!this.§>!Y§())
            {
               if(_loc2_ || _loc1_)
               {
                  if(_loc2_ || _loc1_)
                  {
                     return;
                  }
                  continue;
                  continue;
               }
               continue loop0;
            }
            addr24:
            while(true)
            {
               new §`Y§(this,loaderInfo.parameters.serverVersion,loaderInfo.parameters.serverRoot);
               if(!_loc1_)
               {
                  return;
               }
               continue loop0;
            }
         }
      }
      
      private function §>!Y§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var pageURL:String = null;
         try
         {
            §§push(§§newactivation());
            if(_loc4_)
            {
               §§pop().§§slot[1] = ExternalInterface.call("window.location.href.toString");
               if(!_loc3_)
               {
                  addr87:
                  §§push(false);
                  if(!_loc3_)
                  {
                     if(!§§pop())
                     {
                        if(_loc4_)
                        {
                           §§push(§§newactivation());
                           if(!(_loc3_ && _loc2_))
                           {
                              §§push(§§pop().§§slot[1]);
                              if(!_loc3_)
                              {
                                 §§push(§§pop() == null);
                                 if(!_loc3_)
                                 {
                                    if(!§§pop())
                                    {
                                       if(_loc4_ || _loc3_)
                                       {
                                          §§pop();
                                          if(!(_loc3_ && this))
                                          {
                                             addr196:
                                             §§push(pageURL.indexOf(".swf") == -1);
                                             if(_loc4_ || _loc3_)
                                             {
                                                addr218:
                                                §§push(!§§pop());
                                                loop2:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      loop3:
                                                      while(true)
                                                      {
                                                         if(this.§4Q§.test(pageURL))
                                                         {
                                                            do
                                                            {
                                                               §§push(true);
                                                            }
                                                            while(!(_loc4_ || _loc2_));
                                                            
                                                            addr145:
                                                            return §§pop();
                                                            addr137:
                                                         }
                                                         if(!_loc3_)
                                                         {
                                                            navigateToURL(new URLRequest("http://tazos.angrybirds.com"),"_self");
                                                         }
                                                         §§push(false);
                                                         while(true)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               break loop3;
                                                            }
                                                         }
                                                      }
                                                      addr152:
                                                      return §§pop();
                                                      addr165:
                                                   }
                                                   addr219:
                                                   navigateToURL(new URLRequest("http://tazos.angrybirds.com"),"_self");
                                                   while(true)
                                                   {
                                                      §§push(false);
                                                      §§goto(addr219);
                                                   }
                                                   while(!_loc4_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   return §§pop();
                                                }
                                                addr218:
                                             }
                                             §§goto(addr218);
                                          }
                                          §§goto(addr225);
                                       }
                                       §§goto(addr152);
                                    }
                                    §§goto(addr218);
                                 }
                                 §§goto(addr145);
                              }
                           }
                           §§goto(addr196);
                        }
                        else
                        {
                           addr193:
                        }
                        §§goto(addr165);
                     }
                     §§goto(addr137);
                  }
                  §§goto(addr145);
               }
               §§goto(addr193);
            }
         }
         catch(e:Error)
         {
            var _loc2_:* = e;
            if(!(_loc3_ && _loc3_))
            {
               pageURL == null;
            }
            §§goto(addr87);
         }
         catch(e:SecurityError)
         {
            _loc2_ = e;
            if(_loc4_ || _loc1_)
            {
               pageURL == null;
            }
            §§goto(addr87);
         }
         §§goto(addr196);
      }
   }
}
