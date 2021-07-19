package §4!i§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §0!8§
   {
      
      private static const §'"§:Number = 0.00392156862745098;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §'"§ = 1 / 255;
         }
      }
      
      private var §'!"§:TextField;
      
      private var §8I§:uint;
      
      private var §]"$§:uint;
      
      private var §7!E§:uint;
      
      private var §3f§:ColorMatrixFilter;
      
      public function §0!8§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
            super();
            while(true)
            {
               this.§'!"§ = param1;
               addr62:
               if(!(_loc6_ && this))
               {
                  this.§!V§();
                  addr69:
                  if(_loc6_ && param1)
                  {
                     loop5:
                     while(true)
                     {
                        if(!(_loc6_ && this))
                        {
                           if(_loc6_)
                           {
                              break;
                           }
                           §§goto(addr62);
                        }
                        addr74:
                        loop4:
                        while(_loc5_ || param3)
                        {
                           if(_loc5_)
                           {
                              this.§]"$§ = param4;
                              continue loop5;
                           }
                           addr104:
                           while(true)
                           {
                              this.§8I§ = param2;
                              break loop4;
                           }
                        }
                        while(true)
                        {
                           this.§7!E§ = param3;
                           §§goto(addr74);
                        }
                     }
                     while(true)
                     {
                        this.§3f§ = new ColorMatrixFilter();
                        §§goto(addr104);
                     }
                     addr109:
                  }
                  return;
               }
            }
         }
         §§goto(addr109);
      }
      
      public function set textField(param1:TextField) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§'!"§ = param1;
         }
      }
      
      public function get textField() : TextField
      {
         return this.§'!"§;
      }
      
      public function set textColor(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§8I§ = param1;
         }
         do
         {
            this.§!V§();
         }
         while(_loc2_ && param1);
         
      }
      
      public function get textColor() : uint
      {
         return this.§8I§;
      }
      
      public function set § y§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§7!E§ = param1;
         }
         do
         {
            this.§!V§();
         }
         while(!_loc3_);
         
      }
      
      public function get § y§() : uint
      {
         return this.§7!E§;
      }
      
      public function set §@7§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§]"$§ = param1;
            do
            {
               this.§!V§();
            }
            while(!(_loc2_ || param1));
            
         }
      }
      
      public function get §@7§() : uint
      {
         return this.§]"$§;
      }
      
      private function §!V§() : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         if(_loc14_)
         {
            this.§'!"§.textColor = 16711680;
         }
         var _loc1_:Array = this.§6!0§(this.§7!E§);
         var _loc2_:Array = this.§6!0§(this.§8I§);
         var _loc3_:Array = this.§6!0§(this.§]"$§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         §§push(_loc2_[0] - 255);
         if(_loc14_ || _loc1_)
         {
            §§push(§§pop() - _loc1_[0]);
            if(!_loc13_)
            {
               §§push(§§pop() * §'"§);
               if(_loc14_ || this)
               {
                  addr83:
                  §§push(§§pop() + 1);
                  if(_loc13_)
                  {
                  }
                  addr88:
                  var _loc7_:* = §§pop();
                  §§push(_loc2_[1] - 255);
                  if(_loc14_)
                  {
                     §§push(§§pop() - _loc1_[1]);
                     if(!(_loc13_ && _loc2_))
                     {
                        §§push(§§pop() * §'"§);
                        if(_loc14_)
                        {
                           §§push(§§pop() + 1);
                           if(_loc14_)
                           {
                              addr115:
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc8_:* = §§pop();
                        §§push(_loc2_[2] - 255);
                        if(_loc14_ || this)
                        {
                           §§push(§§pop() - _loc1_[2]);
                           if(!_loc13_)
                           {
                              addr135:
                              §§push(§§pop() * §'"§);
                              if(!(_loc13_ && _loc2_))
                              {
                                 §§push(§§pop() + 1);
                                 if(_loc14_)
                                 {
                                    addr148:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc9_:* = §§pop();
                                 §§push(_loc3_[0] - 255);
                                 if(!_loc13_)
                                 {
                                    §§push(§§pop() - _loc1_[0]);
                                    if(!_loc13_)
                                    {
                                       addr173:
                                       §§push(§'"§);
                                       if(!_loc13_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc13_ && _loc1_))
                                          {
                                             §§push(§§pop() + 1);
                                             if(_loc13_ && this)
                                             {
                                             }
                                             addr203:
                                             var _loc10_:Number = §§pop();
                                             addr202:
                                             §§push(_loc3_[1] - 255);
                                             if(_loc14_)
                                             {
                                                §§push(§§pop() - _loc1_[1]);
                                                if(_loc14_ || _loc1_)
                                                {
                                                   addr222:
                                                   §§push(§'"§);
                                                   if(_loc14_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc13_)
                                                      {
                                                         §§push(§§pop() + 1);
                                                         if(!_loc14_)
                                                         {
                                                         }
                                                         addr237:
                                                         var _loc11_:* = §§pop();
                                                         §§push(_loc3_[2] - 255);
                                                         if(_loc14_ || _loc3_)
                                                         {
                                                            §§push(§§pop() - _loc1_[2]);
                                                            if(!(_loc13_ && _loc3_))
                                                            {
                                                               §§push(§'"§);
                                                               if(!(_loc13_ && _loc3_))
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc14_)
                                                                  {
                                                                     §§push(§§pop() + 1);
                                                                     if(!(_loc13_ && _loc1_))
                                                                     {
                                                                        addr282:
                                                                        §§push(§§pop() - _loc9_);
                                                                        if(!(_loc13_ && _loc2_))
                                                                        {
                                                                           addr290:
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                     }
                                                                  }
                                                                  var _loc12_:* = §§pop();
                                                                  if(!_loc13_)
                                                                  {
                                                                     this.§3f§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
                                                                     do
                                                                     {
                                                                        this.§'!"§.filters = [this.§3f§];
                                                                     }
                                                                     while(_loc13_);
                                                                     
                                                                  }
                                                                  return;
                                                               }
                                                               §§goto(addr282);
                                                            }
                                                            §§goto(addr290);
                                                         }
                                                         §§goto(addr282);
                                                      }
                                                      §§push(_loc8_);
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                   if(!_loc13_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                §§goto(addr237);
                                             }
                                             §§goto(addr222);
                                          }
                                          §§push(_loc7_);
                                       }
                                       §§push(§§pop() - §§pop());
                                       if(_loc14_ || _loc2_)
                                       {
                                          §§goto(addr202);
                                       }
                                    }
                                    §§goto(addr203);
                                 }
                                 §§goto(addr173);
                              }
                           }
                           §§goto(addr148);
                        }
                        §§goto(addr135);
                     }
                  }
                  §§goto(addr115);
               }
               §§goto(addr88);
               §§push(Number(§§pop()));
            }
         }
         §§goto(addr83);
      }
      
      private function §6!0§(param1:uint) : Array
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 16);
         if(_loc3_ || _loc2_)
         {
            §§push(255);
            if(_loc3_)
            {
               addr41:
               §§push(§§pop() & §§pop());
               §§push(param1 >> 8);
               if(!_loc2_)
               {
                  §§push(255);
                  if(!(_loc2_ && param1))
                  {
                     addr65:
                     §§push(§§pop() & §§pop());
                     §§push(param1 & 255);
                  }
                  return null;
               }
            }
            §§goto(addr65);
         }
         §§goto(addr41);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§3f§ = null;
            while(true)
            {
               this.§'!"§.filters = [];
               while(!_loc2_)
               {
                  this.§'!"§ = null;
                  if(_loc1_)
                  {
                     return;
                     addr44:
                  }
               }
            }
         }
         §§goto(addr44);
      }
   }
}
