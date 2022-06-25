package § !x§
{
   public class §5+§
   {
      
      public static const §=2§:String = "linear";
      
      public static const §2-§:String = "sine_in";
      
      public static const §+!j§:String = "sine_out";
      
      public static const §^E§:String = "quad_out";
      
      public static const §!!_§:String = "quad_in";
      
      public static const §>!u§:String = "bounce_out";
      
      public static const §&^§:String = "bounce_in";
      
      public static const §>M§:String = "circular_out";
      
      public static const §^!;§:String = "circular_in";
      
      private static var §%!x§:§5+§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §=2§ = "linear";
            while(true)
            {
               §2-§ = "sine_in";
               loop1:
               for(; _loc2_; loop3:
               for(; !(_loc1_ && _loc2_); loop5:
               while(_loc2_ || _loc2_)
               {
                  §&^§ = "bounce_in";
                  while(true)
                  {
                     §>M§ = "circular_out";
                     addr37:
                     while(_loc2_)
                     {
                        if(!_loc1_)
                        {
                           continue;
                        }
                        §§goto(addr83);
                     }
                     continue loop5;
                  }
               })
               {
                  §!!_§ = "quad_in";
                  while(!_loc1_)
                  {
                     §>!u§ = "bounce_out";
                     continue loop3;
                  }
                  §§goto(addr102);
               })
               {
                  §+!j§ = "sine_out";
                  while(true)
                  {
                     §^E§ = "quad_out";
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            §^!;§ = "circular_in";
            if(!_loc1_)
            {
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr56);
            }
            §§goto(addr37);
         }
      }
      
      private var §'!D§:Vector.<§#!K§>;
      
      private var §#m§:Boolean;
      
      private var §0b§:Boolean = true;
      
      public function §5+§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§'!D§ = new Vector.<§#!K§>();
            do
            {
               super();
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      public static function get §^Z§() : §5+§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§%!x§);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     addr25:
                     §%!x§ = new §5+§();
                  }
               }
               return §%!x§;
            }
         }
         §§goto(addr25);
      }
      
      public function set §[!j§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§0b§ = param1;
         }
      }
      
      public function §%!8§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§#!K§ = null;
         var _loc1_:* = int(this.§'!D§.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§'!D§[_loc1_];
            if(!_loc3_)
            {
               if(_loc2_.§+!^§)
               {
                  while(true)
                  {
                     this.§'!D§.splice(_loc1_,1);
                     addr98:
                     loop5:
                     while(true)
                     {
                        addr79:
                        while(true)
                        {
                           _loc2_.dispose();
                           addr82:
                           addr89:
                           while(!(_loc4_ || _loc3_))
                           {
                              continue loop5;
                           }
                           continue loop5;
                        }
                     }
                  }
                  addr93:
               }
               while(true)
               {
                  §§push(_loc1_);
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc1_ = §§pop();
                  if(!(_loc3_ && this))
                  {
                     if(!_loc3_)
                     {
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr79);
                     }
                     else
                     {
                        §§goto(addr93);
                     }
                  }
                  §§goto(addr82);
                  §§goto(addr89);
               }
               continue;
            }
            §§goto(addr98);
         }
      }
      
      public function §=!a§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §4F§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:§[!`§;
         (_loc6_ = new §[!`§(param1,param2,param3,param4,param5)).§[!j§ = this.§0b§;
         if(!(_loc7_ && param1))
         {
            this.§'!D§.push(_loc6_);
         }
         return _loc6_;
      }
      
      public function §>Y§(... rest) : §4F§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:§2k§ = null;
         var _loc3_:§[u§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(!(_loc8_ && this))
            {
               _loc4_ = this.§'!D§.indexOf(_loc2_);
               if(!_loc8_)
               {
                  this.§'!D§.splice(_loc4_,1);
               }
            }
         }
         _loc3_ = new §[u§(rest,true);
         if(_loc7_ || this)
         {
            _loc3_.§[!j§ = this.§0b§;
            do
            {
               this.§'!D§.push(_loc3_);
            }
            while(!_loc7_);
            
         }
         return _loc3_;
      }
      
      public function §2!o§(... rest) : §4F§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:§2k§ = null;
         var _loc3_:§[u§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(!_loc7_)
            {
               _loc4_ = this.§'!D§.indexOf(_loc2_);
               if(!(_loc8_ || rest))
               {
                  continue;
               }
            }
            this.§'!D§.splice(_loc4_,1);
         }
         _loc3_ = new §[u§(rest,false);
         if(!(_loc7_ && _loc2_))
         {
            _loc3_.§[!j§ = this.§0b§;
            do
            {
               this.§'!D§.push(_loc3_);
            }
            while(!_loc8_);
            
         }
         return _loc3_;
      }
      
      public function pause() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§#m§ = true;
         }
      }
      
      public function resume() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§#m§ = false;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc4_:§#!K§ = null;
         if(!_loc5_)
         {
            if(this.§#m§)
            {
               if(!(_loc5_ && param1))
               {
                  §§goto(addr34);
               }
            }
            var _loc2_:* = 0;
            loop0:
            while(_loc2_ < this.§'!D§.length)
            {
               _loc3_ = false;
               if(!(_loc6_ || this))
               {
                  break;
               }
               (_loc4_ = this.§'!D§[_loc2_]).update(param1);
               if(_loc6_ || param1)
               {
                  if(_loc4_.isCompleted)
                  {
                     loop1:
                     while(true)
                     {
                        this.§'!D§.splice(_loc2_,1);
                        while(true)
                        {
                           _loc4_.dispose();
                           while(!_loc5_)
                           {
                              continue loop1;
                              loop5:
                              while(!_loc5_)
                              {
                                 while(true)
                                 {
                                    _loc2_++;
                                    if(_loc6_ || param1)
                                    {
                                       while(false)
                                       {
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             if(_loc6_ || this)
                                             {
                                                §§push(§§pop() - 1);
                                             }
                                             _loc2_ = §§pop();
                                             continue loop5;
                                          }
                                       }
                                       continue loop0;
                                       addr84:
                                    }
                                    continue loop5;
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr75);
               }
               §§goto(addr84);
            }
            return;
         }
         addr34:
      }
   }
}
