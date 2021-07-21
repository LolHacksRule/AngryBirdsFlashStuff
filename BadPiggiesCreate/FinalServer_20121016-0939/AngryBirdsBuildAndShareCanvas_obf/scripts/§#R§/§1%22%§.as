package §#R§
{
   import §7r§.§,!<§;
   import §7r§.§3`§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §1"%§ extends Sprite
   {
      
      private static const §5!I§:int = 20;
      
      private static const §=!R§:int = 20;
      
      private static const §;!"§:int = 10;
      
      private static const §-"§:int = 3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §5!I§ = 20;
            loop0:
            while(true)
            {
               §=!R§ = 20;
               while(true)
               {
                  §;!"§ = 10;
                  while(!_loc1_)
                  {
                     if(_loc2_)
                     {
                        §-"§ = 3;
                        if(_loc2_)
                        {
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      private var §!!<§:§,!<§;
      
      private var §<!K§:§,!<§;
      
      private var §&""§:Point;
      
      private var §'!E§:Point;
      
      public function §1"%§(param1:§,!<§, param2:§,!<§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            super();
            loop0:
            while(true)
            {
               this.§!!<§ = param1;
               while(true)
               {
                  this.§<!K§ = param2;
                  continue loop0;
                  addr54:
                  if(_loc3_ || param2)
                  {
                     return;
                     addr61:
                  }
               }
            }
         }
         §§goto(addr88);
      }
      
      private function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            graphics.clear();
         }
         while(true)
         {
            if(numChildren <= 0)
            {
               if(_loc1_ || _loc2_)
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
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc2_:Point = null;
         var _loc3_:Point = null;
         if(!_loc15_)
         {
            if(stage)
            {
               loop0:
               while(true)
               {
                  this.clear();
                  loop1:
                  while(!_loc15_)
                  {
                     if(!_loc15_)
                     {
                        while(true)
                        {
                           graphics.lineStyle(§-"§,16777215,1);
                           if(_loc14_)
                           {
                              if(!(_loc14_ || _loc2_))
                              {
                                 continue loop1;
                              }
                              if(!(_loc14_ || param1))
                              {
                                 if(_loc15_)
                                 {
                                    this.§'!E§ = null;
                                 }
                                 else
                                 {
                                    addr69:
                                 }
                                 continue loop0;
                                 break;
                              }
                              if(false)
                              {
                                 continue loop0;
                              }
                              if(this.§'!E§)
                              {
                                 addr76:
                                 _loc2_ = this.§&""§;
                                 _loc3_ = this.§'!E§;
                                 if(_loc14_ || _loc2_)
                                 {
                                    visible = true;
                                    if(!_loc15_)
                                    {
                                       addr112:
                                       this.§&""§ = this.§!!<§.position;
                                       if(_loc14_ || param1)
                                       {
                                          addr124:
                                          this.§'!E§ = this.§<!K§.position;
                                          if(!(_loc15_ && param1))
                                          {
                                             addr136:
                                             graphics.moveTo(_loc2_.x,_loc2_.y);
                                          }
                                       }
                                       var _loc4_:Point;
                                       var _loc5_:Number = (_loc4_ = _loc3_.subtract(_loc2_)).length;
                                       var _loc6_:Point = new Point(-_loc4_.y,_loc4_.x);
                                       if(_loc14_ || _loc2_)
                                       {
                                          _loc4_.normalize(_loc5_ / 2);
                                       }
                                       var _loc7_:Point = _loc2_.add(_loc4_);
                                       if(!(_loc15_ && this))
                                       {
                                          _loc6_.normalize(§;!"§);
                                       }
                                       _loc7_ = _loc7_.add(_loc6_);
                                       if(_loc14_)
                                       {
                                          graphics.curveTo(_loc7_.x,_loc7_.y,_loc3_.x,_loc3_.y);
                                          if(!_loc15_)
                                          {
                                             _loc6_.normalize(§;!"§ * 2);
                                          }
                                       }
                                       var _loc8_:Point;
                                       (_loc8_ = _loc3_.subtract(_loc2_.add(_loc6_))).normalize(§=!R§);
                                       var _loc9_:Point = _loc3_.subtract(_loc8_);
                                       (_loc6_ = new Point(-_loc8_.y,_loc8_.x)).normalize(§=!R§ / 2);
                                       _loc9_ = _loc9_.add(_loc6_);
                                       if(!(_loc15_ && this))
                                       {
                                          graphics.moveTo(_loc9_.x,_loc9_.y);
                                          if(!(_loc15_ && this))
                                          {
                                             graphics.lineTo(_loc3_.x,_loc3_.y);
                                          }
                                       }
                                       _loc9_ = (_loc9_ = _loc9_.subtract(_loc6_)).subtract(_loc6_);
                                       if(!_loc15_)
                                       {
                                          graphics.lineTo(_loc9_.x,_loc9_.y);
                                       }
                                       var _loc10_:Rectangle = getBounds(this);
                                       var _loc11_:BitmapData = new BitmapData(width,height,true,0);
                                       var _loc12_:Point = new Point(-_loc10_.width,-_loc10_.height);
                                       if(!_loc15_)
                                       {
                                          _loc11_.draw(this,new Matrix(1,0,0,1,-_loc10_.x,-_loc10_.y));
                                          if(_loc14_ || _loc2_)
                                          {
                                             addr346:
                                             §3`§.§ !`§(_loc11_,§3`§.§>K§.bitmapData);
                                          }
                                          var _loc13_:Bitmap = new Bitmap(_loc11_);
                                          if(_loc14_)
                                          {
                                             graphics.clear();
                                             loop3:
                                             while(true)
                                             {
                                                addChild(_loc13_);
                                                while(true)
                                                {
                                                   _loc13_.x = _loc10_.x;
                                                   while(!(_loc15_ && _loc3_))
                                                   {
                                                      continue loop3;
                                                      _loc13_.y = _loc10_.y;
                                                      if(!(_loc15_ && param1))
                                                      {
                                                         return;
                                                         addr376:
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr376);
                                       }
                                       §§goto(addr346);
                                    }
                                    §§goto(addr124);
                                 }
                                 §§goto(addr136);
                              }
                              else
                              {
                                 _loc2_ = this.§!!<§.position;
                                 _loc3_ = this.§<!K§.position;
                                 if(!_loc15_)
                                 {
                                    visible = false;
                                 }
                              }
                              §§goto(addr112);
                           }
                           §§goto(addr76);
                        }
                        addr56:
                     }
                     this.§&""§ = null;
                     break;
                  }
                  return;
               }
            }
            §§goto(addr69);
         }
         §§goto(addr56);
      }
   }
}
