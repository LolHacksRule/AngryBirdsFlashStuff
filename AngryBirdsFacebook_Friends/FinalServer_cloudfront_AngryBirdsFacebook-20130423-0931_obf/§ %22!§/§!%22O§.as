package § "!§
{
   import flash.events.Event;
   import flash.system.Security;
   
   public class §!"O§ extends §8!x§
   {
      
      protected static var §%!4§:Array;
      
      protected static var §-!d§:Array;
      
      protected static var §5G§:Boolean = true;
      
      public static const §+D§:String = "small";
      
      public static const §'"O§:String = "square";
      
      public static const NORMAL:String = "normal";
      
      public static const §<G§:String = "large";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §%!4§ = [];
            while(true)
            {
               §-!d§ = [];
               loop1:
               while(_loc1_ || _loc2_)
               {
                  §5G§ = true;
                  while(true)
                  {
                     §+D§ = "small";
                     loop3:
                     while(!(_loc2_ && _loc1_))
                     {
                        if(!_loc2_)
                        {
                           §'"O§ = "square";
                           loop4:
                           do
                           {
                              NORMAL = "normal";
                              while(true)
                              {
                                 §<G§ = "large";
                                 while(_loc1_)
                                 {
                                    if(_loc1_)
                                    {
                                       §^",§("fbcdn-profile-a.akamaihd.net",true);
                                       if(_loc1_ || _loc2_)
                                       {
                                          continue loop4;
                                       }
                                       continue;
                                       continue;
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                           while(_loc2_ && _loc1_);
                           
                           return;
                           addr76:
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr76);
      }
      
      public function §!"O§(param1:String, param2:Boolean = false, param3:String = "square")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            super();
         }
         do
         {
            this.init(param1,param2,param3);
         }
         while(!(_loc5_ || param2));
         
      }
      
      protected static function §^",§(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(§%!4§);
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  if(§§pop().indexOf(§§pop()) != -1)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        break;
                     }
                     addr90:
                     while(true)
                     {
                     }
                  }
                  while(true)
                  {
                     §§push(§%!4§);
                     if(!_loc4_)
                     {
                        break;
                     }
                     §§push(param1);
                     if(!(_loc4_ || §!"O§))
                     {
                        continue loop1;
                     }
                     §§pop().push(§§pop());
                     while(!_loc3_)
                     {
                        Security.loadPolicyFile((!!param2 ? "https://" : "http://") + param1 + "/crossdomain.xml");
                        if(_loc4_)
                        {
                           return;
                        }
                     }
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr90);
      }
      
      public static function §'Z§(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§!"O§ = null;
         if(_loc6_)
         {
            if(§5G§ == param1)
            {
               if(!_loc5_)
               {
                  return;
               }
            }
            else
            {
               addr35:
               §5G§ = param1;
            }
            var _loc3_:int = 0;
            loop0:
            for each(_loc2_ in §-!d§)
            {
               if(!_loc5_)
               {
                  §§push(param1);
                  while(true)
                  {
                     if(!§§pop())
                     {
                        §§push(Boolean(_loc2_.loader));
                        continue;
                     }
                     if(!_loc5_)
                     {
                        if(!_loc2_.loader.parent)
                        {
                           break;
                        }
                        addr92:
                        continue loop0;
                     }
                  }
                  _loc2_.addChild(_loc2_.loader);
               }
               §§goto(addr138);
            }
            return;
         }
         §§goto(addr35);
      }
      
      protected function init(param1:String, param2:Boolean, param3:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         }
         loop0:
         while(true)
         {
            addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
            do
            {
               §§push(§§findproperty(§"!a§));
               if(!_loc5_)
               {
                  if(param2)
                  {
                     addr42:
                     §§push("https://");
                     if(!_loc5_)
                     {
                        addr66:
                        §§push(§§pop() + "graph.facebook.com/");
                        if(!_loc5_)
                        {
                           §§push(param1);
                           if(_loc4_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc4_ || this)
                              {
                                 addr102:
                                 §§push(§§pop() + "/picture?type=");
                                 if(!(_loc5_ && this))
                                 {
                                    addr100:
                                    §§push(param3);
                                 }
                                 §§pop().§"!a§ = §§pop();
                                 continue loop0;
                              }
                           }
                           §§goto(addr102);
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr102);
                     }
                     §§goto(addr100);
                  }
                  else
                  {
                     §§push("http://");
                     if(_loc4_ || param3)
                     {
                        §§goto(addr66);
                        §§push(§§pop());
                     }
                  }
                  §§goto(addr102);
               }
               §§goto(addr42);
            }
            while(_loc5_);
            
            return;
         }
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(§-!d§);
            if(_loc3_)
            {
               if(§§pop().indexOf(this) == -1)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     addr44:
                     §-!d§.push(this);
                  }
               }
               return;
            }
         }
         §§goto(addr44);
      }
      
      private function onRemovedFromStage(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(§-!d§);
            if(_loc3_ || _loc3_)
            {
               if(§§pop().indexOf(this) != -1)
               {
                  if(!_loc2_)
                  {
                     addr49:
                     §-!d§.splice(§-!d§.indexOf(this),1);
                  }
               }
               return;
            }
         }
         §§goto(addr49);
      }
      
      override protected function get isVisible() : Boolean
      {
         return §5G§;
      }
   }
}
