package §+V§
{
   import §7t§.§-!7§;
   import §7t§.§<^§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §4!z§ extends Sprite
   {
      
      private static const §3!;§:int = 20;
      
      private static const §2!F§:int = 20;
      
      private static const §7!A§:int = 10;
      
      private static const §5p§:int = 3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §3!;§ = 20;
            while(true)
            {
               §2!F§ = 20;
               while(_loc2_)
               {
                  §7!A§ = 10;
                  loop2:
                  while(!(_loc1_ && _loc2_))
                  {
                     while(true)
                     {
                        §5p§ = 3;
                        if(_loc2_ || §4!z§)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr57);
      }
      
      private var § !F§:§<^§;
      
      private var §7!n§:§<^§;
      
      private var §^k§:Point;
      
      private var §#v§:Point;
      
      public function §4!z§(param1:§<^§, param2:§<^§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            super();
            while(true)
            {
               this.§ !F§ = param1;
               while(true)
               {
                  this.§7!n§ = param2;
                  §§goto(addr83);
               }
            }
         }
         addr83:
         while(true)
         {
            mouseEnabled = false;
            do
            {
               addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            }
            while(!_loc3_);
            
            if(_loc3_ || _loc3_)
            {
               if(_loc3_)
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr63:
      }
      
      private function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            graphics.clear();
         }
         while(true)
         {
            if(numChildren <= 0)
            {
               if(!(_loc1_ && this))
               {
                  break;
               }
            }
            else
            {
               removeChildAt(0);
            }
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc2_:Point = null;
         var _loc3_:Point = null;
         if(!_loc14_)
         {
            if(stage)
            {
               loop0:
               while(true)
               {
                  this.clear();
                  if(!_loc14_)
                  {
                     if(_loc15_ || param1)
                     {
                        graphics.lineStyle(§5p§,16777215,1);
                        if(_loc15_)
                        {
                           if(false)
                           {
                              continue;
                           }
                           if(this.§#v§)
                           {
                              break;
                           }
                           addr118:
                           _loc2_ = this.§ !F§.position;
                           _loc3_ = this.§7!n§.position;
                           if(_loc15_ || this)
                           {
                              visible = false;
                           }
                           this.§^k§ = this.§ !F§.position;
                           if(!(_loc14_ && param1))
                           {
                              this.§#v§ = this.§7!n§.position;
                              if(_loc15_ || this)
                              {
                                 addr142:
                                 graphics.moveTo(_loc2_.x,_loc2_.y);
                              }
                              addr148:
                              var _loc4_:Point;
                              var _loc5_:Number = (_loc4_ = _loc3_.subtract(_loc2_)).length;
                              var _loc6_:Point = new Point(-_loc4_.y,_loc4_.x);
                              if(_loc15_ || _loc3_)
                              {
                                 _loc4_.normalize(_loc5_ / 2);
                              }
                              var _loc7_:Point = _loc2_.add(_loc4_);
                              if(!(_loc14_ && param1))
                              {
                                 _loc6_.normalize(§7!A§);
                              }
                              _loc7_ = _loc7_.add(_loc6_);
                              if(!(_loc14_ && this))
                              {
                                 graphics.curveTo(_loc7_.x,_loc7_.y,_loc3_.x,_loc3_.y);
                                 if(!(_loc14_ && _loc2_))
                                 {
                                    _loc6_.normalize(§7!A§ * 2);
                                 }
                              }
                              var _loc8_:Point;
                              (_loc8_ = _loc3_.subtract(_loc2_.add(_loc6_))).normalize(§2!F§);
                              var _loc9_:Point = _loc3_.subtract(_loc8_);
                              (_loc6_ = new Point(-_loc8_.y,_loc8_.x)).normalize(§2!F§ / 2);
                              _loc9_ = _loc9_.add(_loc6_);
                              if(!(_loc14_ && this))
                              {
                                 graphics.moveTo(_loc9_.x,_loc9_.y);
                                 if(_loc15_)
                                 {
                                    graphics.lineTo(_loc3_.x,_loc3_.y);
                                 }
                              }
                              _loc9_ = (_loc9_ = _loc9_.subtract(_loc6_)).subtract(_loc6_);
                              if(!_loc14_)
                              {
                                 graphics.lineTo(_loc9_.x,_loc9_.y);
                              }
                              var _loc10_:Rectangle = getBounds(this);
                              var _loc11_:BitmapData = new BitmapData(width,height,true,0);
                              var _loc12_:Point = new Point(-_loc10_.width,-_loc10_.height);
                              if(_loc15_ || _loc3_)
                              {
                                 _loc11_.draw(this,new Matrix(1,0,0,1,-_loc10_.x,-_loc10_.y));
                                 if(_loc15_)
                                 {
                                    §-!7§.§[s§(_loc11_,§-!7§.§;#§.bitmapData);
                                 }
                              }
                              var _loc13_:Bitmap = new Bitmap(_loc11_);
                              if(_loc15_ || _loc3_)
                              {
                                 graphics.clear();
                              }
                              while(true)
                              {
                                 addChild(_loc13_);
                                 while(_loc15_ || param1)
                                 {
                                    _loc13_.x = _loc10_.x;
                                    do
                                    {
                                       _loc13_.y = _loc10_.y;
                                    }
                                    while(!(_loc15_ || param1));
                                    
                                    if(_loc15_ || this)
                                    {
                                       return;
                                    }
                                 }
                              }
                           }
                           §§goto(addr142);
                        }
                        break;
                     }
                     if(!(_loc15_ || this))
                     {
                        loop4:
                        for(; !_loc15_; this.§^k§ = null)
                        {
                           while(true)
                           {
                              this.§#v§ = null;
                              if(!_loc15_)
                              {
                                 break loop0;
                              }
                              continue loop4;
                           }
                        }
                     }
                     else
                     {
                        addr65:
                     }
                     continue;
                     return;
                  }
                  break;
               }
               _loc2_ = this.§^k§;
               _loc3_ = this.§#v§;
               if(!(_loc14_ && this))
               {
                  visible = true;
                  if(!_loc14_)
                  {
                     addr97:
                     §§goto(addr118);
                  }
                  §§goto(addr148);
               }
               §§goto(addr97);
            }
            §§goto(addr68);
         }
         §§goto(addr65);
      }
   }
}
