package §09§
{
   import §,§.§ 3§;
   import §,§.§7!N§;
   import §<!0§.§%g§;
   import §<!0§.§7g§;
   import §^a§.Sprite;
   import §`h§.§@!Z§;
   
   public class §^V§ extends § 3§
   {
      
      private static const §[B§:Number = 3;
      
      public static const §3N§:Number = 0.75;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §[B§ = 3;
         }
         do
         {
            §3N§ = 0.75;
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      private var §!F§:§7g§ = null;
      
      private var §2!'§:Object;
      
      public function §^V§(param1:§7!N§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param3))
         {
            this.§2!'§ = new Object();
         }
         do
         {
            super(param1,param2,param3,param4,param5);
         }
         while(!_loc6_);
         
      }
      
      public function §,!§(param1:Number, param2:Number, param3:Boolean = true) : §7g§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            §@!`§ = false;
            loop0:
            while(true)
            {
               §56§ = -1;
               loop1:
               while(true)
               {
                  this.§2!'§.x = §7F§;
                  loop2:
                  while(!_loc5_)
                  {
                     this.§2!'§.y = §6_§;
                     loop3:
                     while(true)
                     {
                        this.§2!'§.rotation = §!!&§;
                        while(true)
                        {
                           if(param3)
                           {
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    continue loop3;
                                 }
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    this.§!F§ = §%g§.§'I§.§!!7§(§%g§.§'I§.§5!0§(this.§2!'§,{
                                       "x":param1,
                                       "rotation":-360
                                    },{
                                       "x":this.§2!'§.x,
                                       "rotation":0
                                    },§3N§),§%g§.§'I§.§9!Y§(§%g§.§'I§.§5!0§(this.§2!'§,{"y":this.§2!'§.y - §[B§},{"y":this.§2!'§.y},§3N§ / 2,§%g§.§?W§),§%g§.§'I§.§5!0§(this.§2!'§,{"y":param2},{"y":this.§2!'§.y - §[B§},§3N§ / 2,§%g§.§"!3§)));
                                    addr192:
                                    while(true)
                                    {
                                       addr78:
                                       while(true)
                                       {
                                          §§push(this.§!F§);
                                          §§goto(addr81);
                                       }
                                    }
                                 }
                              }
                              continue loop2;
                              addr120:
                           }
                           this.§!F§ = §%g§.§'I§.§5!0§(null,null,null,§^V§.§3N§);
                           while(true)
                           {
                              §§goto(addr78);
                           }
                           addr54:
                           if(_loc5_ && this)
                           {
                              continue;
                           }
                           addr61:
                           §§push(this.§!F§);
                           if(_loc4_)
                           {
                              addr29:
                              if(_loc5_ && param3)
                              {
                                 while(true)
                                 {
                                    §§pop().play();
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          if(_loc4_)
                                          {
                                             if(_loc4_ || param2)
                                             {
                                                §§push(this.§!F§);
                                                while(true)
                                                {
                                                   §§pop().onComplete = this.§#!+§;
                                                   if(_loc5_ && param1)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr54);
                                                   §§goto(addr61);
                                                }
                                                continue;
                                                addr44:
                                             }
                                             §§goto(addr120);
                                          }
                                          break;
                                       }
                                       §§goto(addr83);
                                    }
                                    §§goto(addr192);
                                    §§goto(addr29);
                                 }
                                 addr65:
                              }
                              if(!_loc4_)
                              {
                                 addr81:
                                 §§goto(addr38);
                              }
                              addr38:
                              while(true)
                              {
                                 §§pop().§8!F§ = false;
                                 addr83:
                                 while(_loc4_)
                                 {
                                    continue loop1;
                                 }
                              }
                              return §§pop();
                           }
                           §§goto(addr44);
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr124);
      }
      
      private function §#!+§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§!F§ = null;
            while(true)
            {
               §!!&§ = this.§2!'§.rotation;
               loop1:
               for(; _loc2_ || _loc1_; if(_loc1_ && this)
               {
                  continue;
               },§§goto(addr64))
               {
                  setPosition(this.§2!'§.x,this.§2!'§.y);
                  loop2:
                  while(true)
                  {
                     §@!`§ = false;
                     loop3:
                     while(true)
                     {
                        §56§ = -1;
                        loop4:
                        while(!_loc1_)
                        {
                           while(true)
                           {
                              (§@!Z§.§;!,§ as § $§).slingshot.setSlingShotState(§7!N§.§4!G§);
                              if(_loc2_ || _loc1_)
                              {
                                 if(!_loc1_)
                                 {
                                    continue loop1;
                                 }
                                 continue loop3;
                              }
                              continue loop4;
                           }
                           return;
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            §§push(this.§!F§);
            if(_loc4_)
            {
               if(§§pop() != null)
               {
                  if(!_loc5_)
                  {
                     if(!§@!Z§.isPaused)
                     {
                        §§push(this.§!F§);
                        if(!_loc5_)
                        {
                           §§pop().play();
                           loop2:
                           while(true)
                           {
                              loop3:
                              while(true)
                              {
                                 §!!&§ = this.§2!'§.rotation;
                                 addr99:
                                 while(true)
                                 {
                                    setPosition(this.§2!'§.x,this.§2!'§.y);
                                    addr81:
                                    addr92:
                                    while(true)
                                    {
                                       if(!(_loc4_ || this))
                                       {
                                          continue loop2;
                                       }
                                       if(_loc4_)
                                       {
                                          if(_loc4_)
                                          {
                                             break;
                                          }
                                          addr130:
                                          while(true)
                                          {
                                             §§push(this.§!F§);
                                             addr132:
                                             while(true)
                                             {
                                                §§pop().§@0§();
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          continue loop3;
                                       }
                                    }
                                    addr71:
                                    §3u§();
                                    addr24:
                                    return;
                                    continue loop3;
                                 }
                              }
                           }
                        }
                        §§goto(addr132);
                     }
                  }
                  §§goto(addr130);
               }
               else
               {
                  super.update(param1,param2,param3);
                  if(_loc4_ || param2)
                  {
                     if(_loc4_ || param2)
                     {
                        if(!(_loc4_ || this))
                        {
                           §§goto(addr99);
                        }
                        §§goto(addr24);
                     }
                     §§goto(addr81);
                  }
               }
               §§goto(addr71);
            }
            §§goto(addr132);
         }
         §§goto(addr92);
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§!F§ != null)
            {
               if(!(_loc2_ && _loc3_))
               {
                  addr40:
                  §§push(false);
                  if(_loc3_ || param1)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr59:
                  return super.applyGravity(param1);
               }
               return §§pop();
            }
            §§goto(addr59);
         }
         §§goto(addr40);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§!F§ == null)
            {
               do
               {
                  super.updateGroundControl(param1);
               }
               while(_loc2_ && _loc2_);
               
               if(_loc3_ || param1)
               {
                  return;
               }
            }
         }
      }
   }
}
