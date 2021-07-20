package §_-ox§
{
   import §_-0S§.§_-z1§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §_-PQ§ extends Sprite
   {
       
      
      private var §_-0M§:Sprite;
      
      private var §_-D2§:Number;
      
      private var §_-2r§:Number;
      
      public function §_-PQ§(param1:Number)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:String = null;
         if(!_loc5_)
         {
            super();
         }
         var _loc2_:int = Math.random() * 7;
         §§push(_loc2_);
         if(_loc6_)
         {
            var _loc4_:* = §§pop();
            §§push(0);
            §§push(_loc4_);
            if(_loc6_)
            {
               if(§§pop() === §§pop())
               {
                  §§push(0);
               }
               else
               {
                  §§push(1);
                  if(_loc6_ || this)
                  {
                     if(§§pop() === _loc4_)
                     {
                        §§goto(addr149);
                     }
                     else
                     {
                        §§push(2);
                     }
                     §§goto(addr149);
                  }
                  §§push(_loc4_);
                  if(_loc6_ || param1)
                  {
                     if(§§pop() === §§pop())
                     {
                        addr149:
                        addr150:
                        switch(1)
                        {
                           case 0:
                              _loc3_ = "P_STAR_4";
                              if(_loc6_ || this)
                              {
                                 break;
                              }
                              §§goto(addr164);
                           case 1:
                              _loc3_ = "P_STAR_3";
                              break;
                           case 2:
                              _loc3_ = "P_STAR_2";
                              break;
                           case 3:
                              _loc3_ = "P_STAR_1";
                              break;
                           case 4:
                              _loc3_ = "P_SMOKE_3";
                              break;
                           case 5:
                              _loc3_ = "P_SMOKE_2";
                              break;
                           case 6:
                              _loc3_ = "P_SMOKE_1";
                        }
                        this.§_-0M§ = this.§_-A8§(_loc3_);
                        if(!_loc5_)
                        {
                           addChild(this.§_-0M§);
                           if(_loc6_)
                           {
                              §§goto(addr164);
                           }
                           §§goto(addr187);
                        }
                        addr164:
                        this.§_-0M§.x = -this.§_-0M§.width / 2;
                        if(!(_loc5_ && param1))
                        {
                           addr187:
                           this.§_-0M§.y = -this.§_-0M§.height / 2;
                        }
                        return;
                        §§push(2);
                     }
                     else
                     {
                        §§push(3);
                        if(_loc6_)
                        {
                           addr111:
                           if(§§pop() === _loc4_)
                           {
                              §§push(3);
                              if(!_loc6_)
                              {
                              }
                           }
                           else if(4 === _loc4_)
                           {
                              §§push(4);
                              if(_loc5_ && this)
                              {
                                 addr139:
                              }
                              §§goto(addr149);
                           }
                           else
                           {
                              §§push(5);
                           }
                           §§goto(addr149);
                           §§goto(addr142);
                        }
                        §§goto(addr139);
                     }
                     §§goto(addr149);
                  }
                  §§goto(addr142);
               }
               §§goto(addr149);
            }
            §§goto(addr111);
         }
         §§goto(addr150);
      }
      
      public function clean() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            removeChild(this.§_-0M§);
            if(_loc2_)
            {
               this.§_-0M§ = null;
            }
         }
      }
      
      public function §_-A8§(param1:String) : MovieClip
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §_-z1§.§_-tn§(param1);
         _loc2_ = new _loc3_();
         if(!_loc4_)
         {
            _loc2_.x = _loc2_.width / 2;
            if(_loc5_ || _loc3_)
            {
               _loc2_.y = _loc2_.height / 2;
            }
         }
         return _loc2_;
      }
      
      public function get §_-Nd§() : Number
      {
         return this.§_-D2§;
      }
      
      public function set §_-Nd§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§_-D2§ = param1;
         }
      }
      
      public function get §_-zG§() : Number
      {
         return this.§_-2r§;
      }
      
      public function set §_-zG§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-2r§ = param1;
         }
      }
   }
}
