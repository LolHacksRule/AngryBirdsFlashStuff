package §<!<§
{
   import § !t§.b2DebugDraw;
   import § !t§.b2World;
   import §<!B§.b2Vec2;
   import §?!-§.§'!V§;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §!F§
   {
      
      public static const §4!c§:Number = 0.03333333333333333;
      
      public static const §8!-§:int = 10;
      
      public static const §#!m§:Boolean = false;
      
      public static const §<!a§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §4!c§ = 1 / 30;
            if(!_loc2_)
            {
               §8!-§ = 10;
               if(_loc1_)
               {
                  §#!m§ = false;
                  if(!_loc2_)
                  {
                     addr45:
                     §<!a§ = true;
                  }
               }
               §§goto(addr45);
            }
            return;
         }
         §§goto(addr45);
      }
      
      public var §&4§:b2World;
      
      private var §=E§:Boolean = true;
      
      public var §"K§:§=H§;
      
      public var §2o§:Sprite;
      
      private var §2!U§:b2DebugDraw;
      
      public var §-n§:§7E§;
      
      public var §2![§:Number;
      
      private var §%y§:Number;
      
      private var §?!"§:int;
      
      public function §!F§(param1:§7E§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            super();
            if(!_loc2_)
            {
               §§goto(addr38);
            }
            §§goto(addr48);
         }
         addr38:
         this.§-n§ = param1;
         if(!(_loc2_ && this))
         {
            addr48:
            this.§^!;§();
         }
      }
      
      public function get §`V§() : int
      {
         return this.§?!"§;
      }
      
      public function get §6!"§() : Number
      {
         return this.§%y§;
      }
      
      private function §^!;§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§"K§ = new §=H§(this);
            if(!_loc1_)
            {
               §§goto(addr36);
            }
            §§goto(addr48);
         }
         addr36:
         this.§&4§ = new b2World(new b2Vec2(0,20),this.§=E§);
         if(!_loc1_)
         {
            addr48:
            this.§&4§.§#!i§(this.§"K§);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§&4§);
         if(!_loc1_)
         {
            §§pop().§#!i§(null);
            if(_loc2_ || this)
            {
               this.§"K§ = null;
               if(§#!m§)
               {
                  this.§2o§.graphics.clear();
                  if(!(_loc1_ && this))
                  {
                     addr66:
                     this.§2o§ = null;
                     this.§&4§.§;t§();
                     if(!(_loc1_ && this))
                     {
                        this.§&4§ = null;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr66);
      }
      
      public function §3v§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(!§#!m§)
            {
            }
         }
      }
      
      public function §[t§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            if(§#!m§)
            {
               if(!_loc4_)
               {
                  this.§2o§.x = -param1;
                  if(_loc4_)
                  {
                  }
                  §§goto(addr49);
               }
               this.§2o§.y = -param2;
            }
         }
         addr49:
      }
      
      public function §'!'§(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§%y§ = §4!c§;
         }
         §§push(this.§@j§(param1));
         if(_loc4_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               if(§§pop() > §8!-§)
               {
                  if(_loc4_ || _loc3_)
                  {
                     §§push(§8!-§);
                     if(_loc4_)
                     {
                        §§goto(addr62);
                     }
                     addr62:
                     _loc2_ = int(§§pop());
                     if(_loc4_ || param1)
                     {
                     }
                     §§goto(addr73);
                  }
                  addr73:
                  loop0:
                  while(true)
                  {
                     §§push(param1);
                     if(!_loc3_)
                     {
                        §§push(0);
                        while(§§pop() > §§pop())
                        {
                           §§push(param1);
                           if(_loc3_)
                           {
                              break loop0;
                           }
                           §§push(this.§%y§);
                           if(_loc4_)
                           {
                              §§push(§§pop() * 1000);
                              if(!_loc4_)
                              {
                                 continue;
                              }
                              §§goto(addr96);
                              continue;
                           }
                           addr96:
                           §§push(§§pop() - §§pop());
                           if(_loc4_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc3_ && this)
                              {
                                 break loop0;
                              }
                           }
                           continue loop0;
                        }
                        addr120:
                        §§push(param1);
                        break;
                     }
                     break;
                  }
                  return §§pop();
               }
               this.§[!T§(_loc2_);
            }
         }
         §§goto(addr62);
      }
      
      public function §[!T§(param1:int) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:* = NaN;
         if(_loc8_)
         {
            this.§2![§ = 0;
         }
         var _loc2_:int = 10;
         var _loc3_:int = 10;
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            while(§§pop() < param1)
            {
               var _loc6_:*;
               §§push((_loc6_ = this).§?!"§);
               if(!(_loc9_ && this))
               {
                  §§push(§§pop() + 1);
               }
               var _loc7_:* = §§pop();
               if(_loc8_)
               {
                  _loc6_.§?!"§ = _loc7_;
               }
               if(_loc8_ || _loc3_)
               {
                  §§push(0);
                  if(!_loc8_)
                  {
                     continue;
                  }
                  §§push(Number(§§pop()));
                  if(_loc8_ || _loc2_)
                  {
                     _loc5_ = §§pop();
                     §§push(§<!a§);
                     if(!_loc9_)
                     {
                        if(§§pop())
                        {
                           if(!_loc9_)
                           {
                              addr89:
                              _loc5_ = Number(getTimer());
                              addr90:
                              §§push(this.§&4§);
                              if(_loc8_)
                              {
                                 §§pop().§&E§(this.§%y§,_loc2_,_loc3_);
                                 §§push(this.§&4§);
                              }
                              §§pop().§;t§();
                              if(_loc9_ && _loc3_)
                              {
                                 break;
                              }
                              addr109:
                              §§push(this);
                              §§push(this.§2![§);
                              if(_loc8_ || this)
                              {
                                 §§push(this.§%y§);
                                 if(!_loc9_)
                                 {
                                    §§push(§§pop() * 1000);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§pop().§2![§ = §§pop();
                              if(!_loc9_)
                              {
                                 addr129:
                                 addr130:
                                 if(§<!a§)
                                 {
                                    if(_loc9_ && this)
                                    {
                                       continue loop0;
                                    }
                                    §'!V§.§'!s§.§;!r§("Box2D",getTimer() - _loc5_);
                                    if(!_loc8_)
                                    {
                                       continue loop0;
                                    }
                                 }
                                 this.§-n§.§&! §(this.§%y§);
                                 if(_loc8_ || _loc2_)
                                 {
                                 }
                                 break;
                              }
                              _loc4_++;
                              if(_loc9_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           §§goto(addr129);
                        }
                        §§goto(addr90);
                     }
                     §§goto(addr130);
                  }
                  §§goto(addr89);
               }
               §§goto(addr109);
            }
            return;
         }
      }
      
      private function §@j§(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            §§push(param1);
            loop1:
            while(true)
            {
               §§push(0);
               while(§§pop() > §§pop())
               {
                  _loc2_++;
                  if(_loc4_ && _loc3_)
                  {
                     break;
                  }
                  §§push(param1);
                  if(!(_loc4_ && this))
                  {
                     §§push(this.§%y§);
                     if(_loc4_)
                     {
                        continue;
                     }
                     §§push(§§pop() * 1000);
                     if(!_loc3_)
                     {
                        continue;
                     }
                     §§push(§§pop() - §§pop());
                     if(_loc4_ && _loc3_)
                     {
                        continue loop0;
                     }
                  }
                  §§push(Number(§§pop()));
                  if(_loc3_)
                  {
                     continue loop0;
                  }
                  continue loop1;
               }
               addr86:
               return _loc2_;
            }
         }
      }
   }
}
