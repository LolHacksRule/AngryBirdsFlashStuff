package §[x§
{
   import §!Y§.§[o§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2DebugDraw;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §0q§
   {
      
      public static const §7<§:Number = 0.03333333333333333;
      
      public static const §;!§:int = 10;
      
      public static const §;K§:Boolean = false;
      
      public static const §1!A§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §7<§ = 1 / 30;
         }
         loop0:
         while(true)
         {
            §;!§ = 10;
            loop1:
            do
            {
               §;K§ = false;
               while(!_loc1_)
               {
                  §1!A§ = true;
                  if(!(_loc1_ && _loc1_))
                  {
                     continue loop1;
                  }
               }
               continue loop0;
            }
            while(_loc1_);
            
            return;
         }
      }
      
      public var §#_§:b2World;
      
      private var §?!F§:Boolean = true;
      
      public var §@!5§:§'T§;
      
      public var §super§:Sprite;
      
      private var §+!;§:b2DebugDraw;
      
      public var §1! §:§2^§;
      
      public var §2<§:Number;
      
      private var §]s§:Number;
      
      private var §"&§:int;
      
      public function §0q§(param1:§2^§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            while(true)
            {
               this.§1! § = param1;
               §§goto(addr50);
            }
         }
         addr50:
         while(true)
         {
            this.§6;§();
            if(_loc2_)
            {
               if(!(_loc3_ && param1))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function get §-p§() : int
      {
         return this.§"&§;
      }
      
      public function get §%Q§() : Number
      {
         return this.§]s§;
      }
      
      private function §6;§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§@!5§ = new §'T§(this);
            while(true)
            {
               this.§#_§ = new b2World(new b2Vec2(0,20),this.§?!F§);
               while(!_loc1_)
               {
                  this.§#_§.SetContactListener(this.§@!5§);
                  if(!(_loc1_ && _loc1_))
                  {
                     return;
                     addr62:
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§#_§);
         do
         {
            §§pop().SetContactListener(null);
            this.§@!5§ = null;
            if(§;K§)
            {
               while(true)
               {
                  this.§super§.graphics.clear();
               }
               addr69:
            }
            while(true)
            {
               this.§super§ = null;
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr69);
            }
            §§push(this.§#_§);
         }
         while(!(_loc2_ || _loc1_));
         
         §§pop().ClearForces();
         this.§#_§ = null;
      }
      
      public function §3a§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!§;K§)
            {
            }
         }
      }
      
      public function §<E§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(§;K§)
            {
               loop0:
               while(true)
               {
                  this.§super§.x = -param1;
                  addr71:
                  while(true)
                  {
                     this.§super§.y = -param2;
                     if(_loc3_ || param1)
                     {
                        if(!(_loc4_ && param2))
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr19);
               }
            }
            addr19:
            return;
         }
         §§goto(addr71);
      }
      
      public function §!5§(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            this.§]s§ = §7<§;
         }
         §§push(this.§,#§(param1));
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc2_);
            if(_loc4_ || _loc2_)
            {
               if(§§pop() > §;!§)
               {
                  if(!_loc3_)
                  {
                     §§push(§;!§);
                     if(_loc4_ || this)
                     {
                        addr139:
                        _loc2_ = int(§§pop());
                        while(true)
                        {
                        }
                        addr140:
                     }
                     §§goto(addr139);
                  }
                  §§goto(addr140);
               }
               while(true)
               {
                  this.§^Q§(_loc2_);
                  if(_loc4_)
                  {
                     break;
                  }
                  §§goto(addr139);
               }
               while(true)
               {
                  §§push(param1);
                  if(!_loc3_)
                  {
                     if(!_loc3_)
                     {
                        §§push(0);
                        if(!_loc3_)
                        {
                           if(_loc4_ || param1)
                           {
                              if(§§pop() <= §§pop())
                              {
                                 if(!(_loc4_ || _loc3_))
                                 {
                                    continue;
                                 }
                                 addr72:
                                 §§push(param1);
                                 if(_loc4_ || _loc2_)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 §§push(param1);
                                 if(_loc4_ || param1)
                                 {
                                    addr98:
                                    §§push(Number(§§pop() - this.§]s§ * 1000));
                                 }
                                 §§goto(addr98);
                              }
                              param1 = §§pop();
                              continue;
                           }
                        }
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr72);
               }
               return §§pop();
            }
         }
         §§goto(addr139);
      }
      
      public function §^Q§(param1:int) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:* = NaN;
         if(!_loc9_)
         {
            this.§2<§ = 0;
         }
         var _loc2_:int = 10;
         var _loc3_:int = 10;
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(!_loc9_)
            {
               if(§§pop() >= param1)
               {
                  if(_loc8_)
                  {
                     if(_loc8_)
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        §§push(Number(getTimer()));
                        if(_loc8_ || _loc3_)
                        {
                           _loc5_ = §§pop();
                           loop2:
                           while(true)
                           {
                              loop3:
                              while(true)
                              {
                                 §§push(this.§#_§);
                                 do
                                 {
                                    §§pop().Step(this.§]s§,_loc2_,_loc3_);
                                    §§push(this.§#_§);
                                 }
                                 while(_loc9_);
                                 
                                 §§pop().ClearForces();
                                 while(true)
                                 {
                                    if(_loc8_ || param1)
                                    {
                                       continue;
                                    }
                                 }
                                 addr169:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       break loop3;
                                    }
                                    continue loop3;
                                 }
                              }
                              continue loop1;
                              if(_loc9_ && _loc3_)
                              {
                                 continue;
                              }
                              §[o§.§#[§.§?1§("Box2D",getTimer() - _loc5_);
                              while(true)
                              {
                                 break loop2;
                              }
                              addr111:
                           }
                           this.§1! §.§@p§(this.§]s§);
                           loop10:
                           while(true)
                           {
                              _loc4_++;
                              addr69:
                              while(true)
                              {
                                 if(!_loc8_)
                                 {
                                    continue loop10;
                                 }
                                 if(_loc8_)
                                 {
                                    break;
                                 }
                                 §§goto(addr111);
                                 continue loop10;
                              }
                              continue loop0;
                           }
                        }
                        else
                        {
                           while(true)
                           {
                              _loc5_ = §§pop();
                           }
                           addr184:
                        }
                        while(true)
                        {
                           §§goto(addr169);
                        }
                     }
                  }
                  §§goto(addr69);
               }
               else
               {
                  var _loc6_:*;
                  §§push((_loc6_ = this).§"&§);
                  if(_loc8_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc7_:* = §§pop();
                  if(!_loc9_)
                  {
                     _loc6_.§"&§ = _loc7_;
                  }
                  if(!(_loc9_ && param1))
                  {
                     addr183:
                     §§goto(addr184);
                     §§push(Number(0));
                  }
               }
               §§goto(addr111);
            }
            §§goto(addr183);
         }
      }
      
      private function §,#§(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(param1);
            if(!(_loc3_ && this))
            {
               if(_loc4_ || param1)
               {
                  if(_loc4_)
                  {
                     §§push(0);
                     if(_loc4_ || _loc3_)
                     {
                        if(!_loc3_)
                        {
                           if(§§pop() <= §§pop())
                           {
                              if(_loc4_)
                              {
                                 break;
                              }
                              loop1:
                              while(!(_loc4_ || param1))
                              {
                                 while(true)
                                 {
                                    param1 = §§pop();
                                    continue loop1;
                                 }
                              }
                              continue;
                           }
                           _loc2_++;
                           while(true)
                           {
                              §§push(param1);
                              addr77:
                              while(true)
                              {
                                 §§push(this.§]s§);
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(§§pop() * 1000);
                        }
                     }
                     while(true)
                     {
                        §§push(§§pop() - §§pop());
                        addr82:
                        while(true)
                        {
                           §§goto(addr83);
                        }
                     }
                  }
                  §§goto(addr77);
               }
               §§goto(addr82);
            }
            §§goto(addr83);
         }
         return _loc2_;
      }
   }
}
