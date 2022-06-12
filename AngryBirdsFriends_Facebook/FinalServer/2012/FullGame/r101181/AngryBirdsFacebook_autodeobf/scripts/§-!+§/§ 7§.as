package §-!+§
{
   import §,"2§.§;6§;
   import §6o§.§+!k§;
   import §]!>§.§#"1§;
   import §]!>§.§,;§;
   import §]!>§.§2!W§;
   import §]!>§.§;!e§;
   import §]!>§.§>+§;
   import §]!>§.§[Q§;
   import flash.display.Loader;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class § 7§ extends §;!B§
   {
      
      public static var §+!z§:String;
      
      public static var §<"C§:Boolean = false;
      
      public static var §"X§:Dictionary;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §<"C§ = false;
         }
         do
         {
            §"X§ = new Dictionary();
         }
         while(!_loc1_);
         
      }
      
      private var §]D§:Loader;
      
      private var §6"3§:§=G§;
      
      public function § 7§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
            do
            {
               this.init();
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      private function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            addEventListener(MouseEvent.CLICK,this.§#!0§);
         }
      }
      
      private function §,""§(param1:Class) : §=G§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            if(!§"X§[param1])
            {
               if(_loc3_)
               {
                  addr49:
                  §"X§[param1] = [];
               }
            }
            var _loc2_:Array = §"X§[param1];
            if(!_loc4_)
            {
               if(_loc2_.length == 0)
               {
                  if(_loc3_)
                  {
                     return new param1();
                  }
               }
            }
            return _loc2_.pop();
         }
         §§goto(addr49);
      }
      
      private function §@c§(param1:§=G§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Class = Object(this.§6"3§).constructor;
         if(_loc4_ || _loc3_)
         {
            if(!§"X§[_loc2_])
            {
               while(true)
               {
                  §"X§[_loc2_] = [];
                  while(true)
                  {
                  }
               }
               addr76:
            }
            do
            {
               §"X§[_loc2_].push(param1);
               if(!(_loc4_ || param1))
               {
                  continue;
               }
            }
            while(!_loc4_);
            
            return;
         }
         §§goto(addr76);
      }
      
      private function §`"%§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Class = null;
         var _loc3_:* = Object(this.§ T§).constructor;
         if(_loc5_ || _loc3_)
         {
            if(§2!W§ === _loc3_)
            {
               if(!_loc4_)
               {
                  §§push(0);
                  if(_loc4_ && _loc2_)
                  {
                     addr133:
                  }
               }
               else
               {
                  addr137:
                  §§push(4);
                  if(_loc5_ || _loc3_)
                  {
                     addr145:
                  }
               }
               addr150:
               switch(§§pop())
               {
                  case 0:
                     _loc1_ = §'@§;
                     if(_loc5_ || _loc3_)
                     {
                        break;
                     }
                     addr161:
                     §+!k§.log("WARNING! Unknown score item found!");
                     if(_loc5_)
                     {
                        return;
                     }
                     var _loc2_:Class = !!this.§6"3§ ? Object(this.§6"3§).constructor : null;
                     addr169:
                     if(_loc5_)
                     {
                        if(_loc1_ != _loc2_)
                        {
                           if(!_loc4_)
                           {
                              §§push(this.§6"3§);
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    addr234:
                                    while(true)
                                    {
                                       this.§@c§(removeChild(this.§6"3§) as §=G§);
                                       addr242:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr234:
                                 }
                                 addr213:
                                 while(true)
                                 {
                                    this.§6"3§ = addChild(this.§,""§(_loc1_)) as §=G§;
                                    addr223:
                                    while(true)
                                    {
                                       if(!_loc5_)
                                       {
                                          §§goto(addr234);
                                       }
                                    }
                                    §§goto(addr242);
                                 }
                              }
                              addr233:
                           }
                           §§goto(addr234);
                        }
                        while(true)
                        {
                           §§push(this.§6"3§);
                           if(!_loc4_)
                           {
                              §§pop().data = this.§ T§;
                              if(!_loc4_)
                              {
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 §§goto(addr242);
                              }
                              §§goto(addr223);
                           }
                           else
                           {
                              §§goto(addr233);
                           }
                        }
                        return;
                     }
                     §§goto(addr234);
                     break;
                  case 1:
                     _loc1_ = §<!<§;
                     break;
                  case 2:
                     _loc1_ = §&"?§;
                     break;
                  case 3:
                     _loc1_ = §;u§;
                     break;
                  case 4:
                     _loc1_ = §`![§;
               }
               if(!_loc1_)
               {
                  if(_loc5_ || _loc1_)
                  {
                     §§goto(addr161);
                  }
                  §§goto(addr172);
               }
               §§goto(addr169);
            }
            else if(§;!e§ === _loc3_)
            {
               if(_loc5_ || _loc2_)
               {
                  §§push(1);
                  if(!_loc5_)
                  {
                     §§goto(addr145);
                  }
               }
               else
               {
                  §§goto(addr137);
               }
               §§goto(addr150);
            }
            else if(§>+§ === _loc3_)
            {
               if(_loc5_)
               {
                  §§push(2);
                  if(_loc4_ && this)
                  {
                  }
               }
               else
               {
                  addr125:
                  §§push(3);
                  if(!(_loc4_ && _loc1_))
                  {
                     §§goto(addr133);
                  }
               }
               §§goto(addr150);
            }
            else
            {
               if(§[Q§ === _loc3_)
               {
                  if(_loc5_)
                  {
                     §§goto(addr125);
                  }
                  else
                  {
                     §§goto(addr137);
                  }
               }
               else if(§,;§ === _loc3_)
               {
                  §§goto(addr137);
               }
               else
               {
                  §§push(5);
               }
               §§goto(addr137);
            }
            §§goto(addr137);
         }
         §§goto(addr125);
      }
      
      private function §#!0§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§ T§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc3_ || param1)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        if(!_loc2_)
                        {
                           if(!_loc2_)
                           {
                              §10§.scrollerSprite.dispatchEvent(new §;6§(§;6§.§;"E§,data as §#"1§));
                              addr74:
                              break;
                           }
                           continue loop0;
                        }
                        §§goto(addr74);
                     }
                     return;
                     addr48:
                  }
               }
               addr87:
               while(true)
               {
                  §§pop();
                  continue loop0;
               }
            }
         }
         §§goto(addr74);
      }
      
      override public function get width() : Number
      {
         return 61;
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            super.data = param1;
            do
            {
               this.update();
            }
            while(_loc3_ && _loc3_);
            
         }
      }
      
      private function update() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(data == null)
            {
               if(_loc2_ && _loc1_)
               {
               }
            }
            else
            {
               this.§`"%§();
            }
         }
      }
      
      public function get § T§() : §#"1§
      {
         return data as §#"1§;
      }
      
      public function get §%!Q§() : §=G§
      {
         return this.§6"3§;
      }
   }
}
