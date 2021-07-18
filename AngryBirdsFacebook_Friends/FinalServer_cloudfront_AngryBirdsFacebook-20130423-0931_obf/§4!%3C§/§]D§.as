package §4!<§
{
   import §'!6§.Sprite;
   import §2"'§.§0W§;
   import §2"'§.§6!K§;
   
   public class §]D§ extends § !X§
   {
      
      private static const §&"G§:Number = 10;
      
      public static const §?!p§:Number = 1.0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §&"G§ = 10;
         }
         do
         {
            §?!p§ = 1;
         }
         while(_loc1_);
         
      }
      
      private var §3!'§:§6!K§ = null;
      
      private var §'L§:Object;
      
      private var §?!0§:Boolean = false;
      
      public function §]D§(param1:§&=§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || this)
         {
            this.§'L§ = new Object();
         }
         do
         {
            super(param1,param2,param3,param4,param5);
         }
         while(!(_loc6_ || param2));
         
      }
      
      public function §<"N§(param1:Number, param2:Number, param3:Boolean = true) : §6!K§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            §+5§ = false;
            while(true)
            {
               §8!T§ = -1;
               loop1:
               while(true)
               {
                  this.§'L§.x = §4!K§;
                  loop2:
                  while(true)
                  {
                     this.§'L§.y = §7!#§;
                     loop3:
                     while(true)
                     {
                        this.§'L§.rotation = §!"W§;
                        while(true)
                        {
                           if(!param3)
                           {
                              this.§3!'§ = §0W§.§&"5§.§]!r§(null,null,null,§]D§.§?!p§);
                              while(true)
                              {
                                 if(!_loc5_)
                                 {
                                    while(true)
                                    {
                                       §§push(this.§3!'§);
                                       addr72:
                                       while(true)
                                       {
                                          §§pop().play();
                                          addr73:
                                          while(_loc4_ || param3)
                                          {
                                             continue loop1;
                                          }
                                       }
                                       addr194:
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       this.§3!'§ = §0W§.§&"5§.§]">§(§0W§.§&"5§.§]!r§(this.§'L§,{
                                          "x":param1,
                                          "rotation":-360
                                       },null,§?!p§),§0W§.§&"5§.§%G§(§0W§.§&"5§.§]!r§(this.§'L§,{"y":this.§'L§.y - §&"G§},null,§?!p§ / 2,§0W§.§'I§),§0W§.§&"5§.§]!r§(this.§'L§,{"y":param2},{"y":this.§'L§.y - §&"G§},§?!p§ / 2,§0W§.§"q§)));
                                    }
                                    addr124:
                                 }
                                 while(_loc4_)
                                 {
                                    §§goto(addr194);
                                 }
                                 continue loop3;
                              }
                              addr118:
                           }
                           §§goto(addr124);
                           addr54:
                           if(!(_loc5_ && param3))
                           {
                              continue loop2;
                           }
                        }
                     }
                  }
               }
               if(!(_loc4_ || param2))
               {
                  continue;
               }
               §§push(this.§3!'§);
               while(true)
               {
                  §§pop().onComplete = this.§[§;
                  if(_loc4_)
                  {
                     if(!_loc5_)
                     {
                        §§goto(addr54);
                     }
                     §§goto(addr118);
                  }
                  break;
                  §§goto(addr68);
               }
               §§goto(addr73);
            }
         }
         addr68:
         while(true)
         {
            §§push(this.§3!'§);
            if(!(_loc4_ || param1))
            {
               continue loop9;
            }
            if(!(_loc5_ && param1))
            {
               break;
            }
            §§goto(addr72);
         }
         return §§pop();
      }
      
      private function §[§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§3!'§ = null;
            loop0:
            while(true)
            {
               §!"W§ = this.§'L§.rotation;
               while(true)
               {
                  setPosition(this.§'L§.x,this.§'L§.y);
                  addr74:
                  while(_loc2_)
                  {
                  }
               }
               addr57:
               while(true)
               {
                  if(!(_loc1_ && this))
                  {
                     continue;
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §+5§ = false;
            §§goto(addr57);
         }
         §§goto(addr42);
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(this.§3!'§);
            while(true)
            {
               if(§§pop() == null)
               {
                  super.update(param1,param2,param3);
                  if(!(_loc4_ || param2))
                  {
                     break;
                  }
                  if(_loc4_)
                  {
                     if(!_loc5_)
                     {
                        §§goto(addr19);
                     }
                     loop1:
                     while(true)
                     {
                        setPosition(this.§'L§.x,this.§'L§.y);
                        addr92:
                        addr97:
                        while(true)
                        {
                           §]`§();
                        }
                        addr97:
                        while(true)
                        {
                           §!"W§ = this.§'L§.rotation;
                           continue loop1;
                        }
                     }
                  }
                  while(true)
                  {
                     if(_loc4_)
                     {
                        if(_loc4_ || param3)
                        {
                           break;
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr92);
                  }
                  continue;
               }
               §§goto(addr97);
            }
            addr19:
            return;
            addr95:
            addr59:
         }
         while(true)
         {
            §§push(this.§3!'§);
            if(_loc4_)
            {
               §§pop().play();
            }
            else
            {
               §§goto(addr95);
            }
            §§goto(addr59);
         }
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(this.§3!'§ != null)
            {
               if(!_loc3_)
               {
                  §§push(false);
                  if(_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr43:
                  return super.applyGravity(param1);
               }
               return §§pop();
            }
         }
         §§goto(addr43);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§3!'§ != null)
            {
               if(!(_loc3_ && this))
               {
                  return;
               }
               addr57:
               while(true)
               {
               }
               addr57:
            }
            while(true)
            {
               super.updateGroundControl(param1);
               if(!(_loc3_ && this))
               {
                  break;
               }
               §§goto(addr57);
            }
            return;
         }
         §§goto(addr57);
      }
      
      public function get §;"F§() : Boolean
      {
         return this.§?!0§;
      }
      
      public function set §;"F§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§?!0§ = param1;
         }
      }
   }
}
