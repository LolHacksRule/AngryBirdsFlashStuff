package §+!c§
{
   import flash.display.MovieClip;
   
   public class §6!R§
   {
      
      public static const §'![§:Number = 1024;
      
      public static const §="E§:Number = 768;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §'![§ = 1024;
         }
         do
         {
            §="E§ = 768;
         }
         while(_loc2_);
         
      }
      
      private var §^c§:MovieClip;
      
      private var §##9§:Vector.<Rock>;
      
      public function §6!R§(param1:MovieClip)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            super();
            while(true)
            {
               this.§^c§ = param1;
               §§goto(addr66);
            }
         }
         addr66:
         while(true)
         {
            this.init();
            if(!_loc2_)
            {
               if(_loc3_ || _loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function init() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Rock = null;
         while(this.§^c§.numChildren > 0)
         {
            this.§^c§.removeChildAt(0);
            if(_loc4_)
            {
               break;
            }
         }
         var _loc1_:int = Math.round(7 + Math.random() * 5);
         if(_loc5_)
         {
            this.§##9§ = new Vector.<Rock>(_loc1_);
         }
         var _loc2_:int = 0;
         if(_loc5_)
         {
            loop1:
            while(_loc2_ < _loc1_)
            {
               _loc3_ = new Rock();
               if(_loc5_)
               {
                  this.§##9§[_loc2_] = _loc3_;
                  loop2:
                  while(true)
                  {
                     this.§^c§.addChild(_loc3_);
                     loop3:
                     while(true)
                     {
                        _loc3_.x = Math.random() * §6!R§.§'![§;
                        while(true)
                        {
                           _loc3_.y = Math.random() * §6!R§.§="E§;
                           loop5:
                           while(_loc5_ || _loc3_)
                           {
                              loop6:
                              while(true)
                              {
                                 _loc3_.rotation = Math.random() * 360;
                                 while(true)
                                 {
                                    if(!_loc4_)
                                    {
                                       if(!_loc4_)
                                       {
                                          if(!_loc4_)
                                          {
                                             _loc2_++;
                                             if(_loc5_ || _loc2_)
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          continue loop2;
                                       }
                                       continue loop3;
                                    }
                                    continue loop5;
                                 }
                                 addr84:
                                 while(false)
                                 {
                                    continue loop6;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr84);
            }
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Rock = null;
         var _loc2_:* = int(this.§##9§.length - 1);
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§##9§[_loc2_];
            if(_loc4_)
            {
               _loc3_.update(param1);
               loop1:
               while(true)
               {
                  if(_loc3_.x >= -100)
                  {
                     if(_loc3_.x <= §'![§ + 100)
                     {
                        if(_loc3_.y >= -100)
                        {
                           if(_loc3_.y > §="E§ + 100)
                           {
                              if(_loc4_ || _loc3_)
                              {
                                 if(_loc4_ || this)
                                 {
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       _loc3_.y = -100;
                                       loop5:
                                       while(true)
                                       {
                                          addr65:
                                          while(true)
                                          {
                                             _loc3_.randomizeType();
                                             loop7:
                                             while(!_loc5_)
                                             {
                                                if(_loc4_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         addr36:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            if(_loc4_)
                                                            {
                                                               §§push(§§pop() - 1);
                                                            }
                                                            _loc2_ = §§pop();
                                                            if(_loc5_ && this)
                                                            {
                                                               continue loop7;
                                                            }
                                                            if(!(_loc5_ && param1))
                                                            {
                                                               continue loop1;
                                                            }
                                                         }
                                                         continue loop0;
                                                         addr36:
                                                      }
                                                      else
                                                      {
                                                         loop8:
                                                         while(true)
                                                         {
                                                            _loc3_.randomizeType();
                                                            addr150:
                                                            while(true)
                                                            {
                                                               if(!(_loc5_ && this))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr36);
                                                                  }
                                                                  addr157:
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(_loc4_ || param1)
                                                                     {
                                                                        _loc3_.x = -100;
                                                                        continue loop8;
                                                                     }
                                                                     addr187:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        §§push(§'![§);
                                                                        if(!(_loc5_ && this))
                                                                        {
                                                                           §§push(§§pop() + 100);
                                                                        }
                                                                        §§pop().x = §§pop();
                                                                     }
                                                                  }
                                                                  addr167:
                                                               }
                                                               continue loop8;
                                                            }
                                                         }
                                                      }
                                                      loop4:
                                                      while(true)
                                                      {
                                                         _loc3_.randomizeType();
                                                         addr181:
                                                         while(true)
                                                         {
                                                            §§goto(addr36);
                                                            continue loop4;
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         _loc3_.randomizeType();
                                                      }
                                                      addr146:
                                                   }
                                                   §§goto(addr36);
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr36);
                                                }
                                             }
                                             continue loop5;
                                          }
                                       }
                                       addr120:
                                    }
                                    §§goto(addr181);
                                 }
                                 else
                                 {
                                    addr132:
                                    if(!(_loc5_ && this))
                                    {
                                       §§push(_loc3_);
                                       §§push(§="E§);
                                       if(!_loc5_)
                                       {
                                          §§push(§§pop() + 100);
                                       }
                                       §§pop().y = §§pop();
                                       §§goto(addr146);
                                    }
                                 }
                                 §§goto(addr150);
                              }
                              §§goto(addr120);
                           }
                           §§goto(addr36);
                        }
                        §§goto(addr132);
                     }
                     §§goto(addr167);
                  }
                  §§goto(addr187);
               }
            }
            §§goto(addr157);
         }
      }
   }
}

import com.rovio.assets.§5_§;
import flash.display.MovieClip;
import flash.display.Sprite;

class Rock extends Sprite
{
    
   
   private var mXspeed:Number;
   
   private var mYspeed:Number;
   
   private var mRotationalSpeed:Number;
   
   private var mAsset:MovieClip;
   
   function Rock()
   {
      super();
      this.mAsset = new §5_§.§`"G§("IdlingRock")();
      addChild(this.mAsset);
      this.randomizeType();
      this.mXspeed = -5 + Math.random() * 10;
      this.mYspeed = -5 + Math.random() * 10;
      this.mRotationalSpeed = -5 + Math.random() * 10;
   }
   
   public function update(param1:Number) : void
   {
      var _loc2_:Number = param1 / 1000;
      x += this.mXspeed * _loc2_;
      y += this.mYspeed * _loc2_;
      rotation += this.mRotationalSpeed * _loc2_;
   }
   
   public function randomizeType() : void
   {
      this.mAsset.gotoAndStop(1 + Math.floor(Math.random() * this.mAsset.totalFrames));
   }
}
