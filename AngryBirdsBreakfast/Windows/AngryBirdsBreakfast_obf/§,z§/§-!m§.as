package §,z§
{
   import §&v§.§9B§;
   import §6![§.Sprite;
   import §?@§.§ !y§;
   import §?@§.§'^§;
   import §?@§.§0]§;
   import §@L§.§3!&§;
   import §@L§.§;!3§;
   
   public class §-!m§ extends §3!&§
   {
      
      private static const §&&§:Number = 20;
      
      private static const §=!d§:Number = 720;
      
      public static const §@!%§:Number = 1.5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §-!m§)
         {
            §&&§ = 20;
            while(true)
            {
               §=!d§ = 720;
               §§goto(addr66);
            }
         }
         addr66:
         while(true)
         {
            §@!%§ = 1.5;
            if(_loc1_)
            {
               if(_loc1_ || _loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private var §<b§:Object;
      
      private var §]!E§:§0]§ = null;
      
      public function §-!m§(param1:§;!3§, param2:Sprite, param3:String, param4:§9B§, param5:Number, param6:Number, param7:Number = 0.0, param8:int = 0)
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(!_loc10_)
         {
            this.§<b§ = new Object();
         }
         do
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8);
         }
         while(_loc10_ && param2);
         
      }
      
      public function §>"#§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = true) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            §12§ = false;
            loop0:
            while(true)
            {
               §'C§ = -1;
               loop1:
               while(true)
               {
                  this.§<b§.x = param1;
                  loop2:
                  while(true)
                  {
                     this.§<b§.y = param2;
                     loop3:
                     while(true)
                     {
                        this.§<b§.rotation = §?!G§;
                        while(!_loc7_)
                        {
                           if(!param5)
                           {
                              this.§]!E§ = § !y§.§2Z§.§!!f§(null,null,null,§@!%§);
                              while(_loc6_)
                              {
                                 while(true)
                                 {
                                    this.§]!E§.onComplete = this.§9!r§;
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    if(!(_loc6_ || param3))
                                    {
                                       continue;
                                    }
                                    if(!(_loc7_ && this))
                                    {
                                       if(_loc6_)
                                       {
                                          continue loop1;
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                              continue;
                           }
                           while(_loc6_)
                           {
                              this.§]!E§ = § !y§.§2Z§.§7!%§(§ !y§.§2Z§.§5;§(§ !y§.§2Z§.§!!f§(this.§<b§,{"y":param4 - §&&§},{"y":param2},§@!%§ / 2,§'^§.§=!q§),§ !y§.§2Z§.§!!f§(this.§<b§,{"y":param4},{"y":param4 - §&&§},§@!%§ / 2,§'^§.§>!$§)),§ !y§.§2Z§.§!!f§(this.§<b§,{
                                 "x":param3,
                                 "rotation":§?!G§ - §=!d§
                              },null,§@!%§));
                              §§goto(addr143);
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
      }
      
      private function §9!r§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§]!E§ = null;
            while(true)
            {
               §!&§ = this.§<b§.rotation;
               loop1:
               while(true)
               {
                  §^!-§ = §?!G§;
                  while(true)
                  {
                     setPosition(this.§<b§.x,this.§<b§.y);
                     while(!_loc2_)
                     {
                        while(_loc1_ || _loc1_)
                        {
                           continue loop1;
                           §'C§ = -1;
                           if(_loc1_)
                           {
                              return;
                           }
                        }
                     }
                  }
               }
               if(_loc2_ && _loc1_)
               {
                  continue;
               }
               §§goto(addr70);
            }
         }
         while(true)
         {
            §12§ = false;
            §§goto(addr39);
         }
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(this.§]!E§);
            if(!_loc5_)
            {
               if(§§pop() == null)
               {
                  super.update(param1,param2,param3);
                  if(!_loc5_)
                  {
                     if(_loc5_)
                     {
                        loop0:
                        while(true)
                        {
                           if(!(_loc5_ && param2))
                           {
                              §!&§ = this.§<b§.rotation;
                              loop1:
                              while(true)
                              {
                                 this.updateRenderer();
                                 addr39:
                                 addr43:
                                 do
                                 {
                                    if(!_loc4_)
                                    {
                                       continue loop1;
                                    }
                                 }
                                 while(!_loc4_);
                                 
                                 §§goto(addr19);
                              }
                           }
                           else
                           {
                              while(true)
                              {
                                 §§push(this.§]!E§);
                                 if(!_loc5_)
                                 {
                                    if(!§§pop().isPaused)
                                    {
                                       continue loop0;
                                    }
                                    if(!(_loc5_ && param3))
                                    {
                                       addr109:
                                       §§push(this.§]!E§);
                                       while(true)
                                       {
                                          §§pop().play();
                                       }
                                       addr109:
                                    }
                                 }
                                 §§goto(addr109);
                              }
                              addr84:
                           }
                           while(true)
                           {
                              continue loop0;
                           }
                        }
                     }
                     addr19:
                     return;
                  }
                  §§goto(addr39);
               }
               §§goto(addr84);
            }
            §§goto(addr109);
         }
         §§goto(addr43);
      }
      
      override public function updateRenderer() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§]!E§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc1_ && _loc1_))
               {
                  if(!§§pop())
                  {
                     while(!§§pop())
                     {
                        do
                        {
                           super.updateRenderer();
                        }
                        while(!(_loc2_ || _loc2_));
                        
                        if(!_loc2_)
                        {
                           break;
                        }
                        if(_loc2_)
                        {
                           return;
                        }
                        §§push(§§pop().isPaused);
                        continue loop0;
                        if(_loc2_ || this)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(_loc2_ || _loc1_)
                        {
                           continue;
                        }
                        addr101:
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                        addr101:
                     }
                     §§goto(addr77);
                  }
               }
               §§goto(addr101);
            }
         }
         addr77:
      }
      
      public function §"!X§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§]!E§)
            {
               if(_loc1_)
               {
                  addr33:
                  §§push(true);
                  if(!(_loc2_ && _loc1_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr52:
                  return false;
               }
               return §§pop();
            }
            §§goto(addr52);
         }
         §§goto(addr33);
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(this.§]!E§ != null)
            {
               if(!_loc2_)
               {
                  addr50:
                  §§push(false);
                  if(_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr54:
                  return super.applyGravity(param1);
               }
               return §§pop();
            }
            §§goto(addr54);
         }
         §§goto(addr50);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(this.§]!E§ != null)
            {
               if(!_loc3_)
               {
                  return;
               }
               while(true)
               {
                  §§goto(addr38);
               }
            }
            addr38:
            §§goto(addr59);
         }
         addr59:
         while(true)
         {
            super.updateGroundControl(param1);
            if(_loc2_ || this)
            {
               break;
            }
            continue loop0;
         }
      }
   }
}
