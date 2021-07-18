package §5!`§
{
   import §9!n§.§0Y§;
   import com.rovio.assets.§1F§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §#!S§ extends Sprite
   {
       
      
      private var §;!e§:Sprite;
      
      private var §1!O§:Number;
      
      private var §^!Z§:Number;
      
      private var §5f§:§0Y§;
      
      public function §#!S§(param1:Number)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = null;
         if(_loc6_)
         {
            super();
         }
         var _loc2_:int = Math.random() * 7;
         §§push(_loc2_);
         if(_loc6_)
         {
            var _loc4_:* = §§pop();
            if(0 === _loc4_)
            {
               §§push(0);
            }
            else
            {
               if(1 === _loc4_)
               {
                  if(_loc6_)
                  {
                     addr184:
                     switch(1)
                     {
                        case 0:
                           §§push("P_STAR_4");
                           if(_loc6_)
                           {
                              _loc3_ = §§pop();
                              if(_loc6_)
                              {
                                 addr193:
                                 this.§;!e§ = this.§76§(_loc3_);
                                 if(!(_loc5_ && param1))
                                 {
                                    addChild(this.§;!e§);
                                    if(!(_loc5_ && this))
                                    {
                                       break;
                                    }
                                    §§goto(addr247);
                                 }
                                 this.§;!e§.x = -this.§;!e§.width / 2;
                              }
                              break;
                           }
                           addr82:
                           _loc3_ = §§pop();
                           if(_loc6_ || _loc3_)
                           {
                              §§goto(addr193);
                           }
                           §§goto(addr238);
                        case 1:
                           _loc3_ = "P_STAR_3";
                           if(!(_loc5_ && param1))
                           {
                              §§goto(addr193);
                           }
                           break;
                        case 2:
                           _loc3_ = "P_STAR_2";
                           if(!_loc6_)
                           {
                           }
                           §§goto(addr193);
                        case 3:
                           _loc3_ = "P_STAR_1";
                           if(!(_loc5_ && this))
                           {
                              §§goto(addr193);
                           }
                           addr238:
                           this.§;!e§.y = -this.§;!e§.height / 2;
                           addr247:
                           return;
                        case 4:
                           §§push("P_SMOKE_3");
                           if(!_loc5_)
                           {
                              _loc3_ = §§pop();
                           }
                           else
                           {
                              addr93:
                              _loc3_ = §§pop();
                           }
                           §§goto(addr193);
                        case 5:
                           §§push("P_SMOKE_2");
                           if(!(_loc5_ && this))
                           {
                              §§goto(addr82);
                           }
                           else
                           {
                              §§goto(addr93);
                           }
                        case 6:
                           §§goto(addr93);
                        default:
                           §§goto(addr193);
                     }
                     this.mouseEnabled = false;
                     §§goto(addr193);
                     §§push("P_SMOKE_1");
                  }
                  else
                  {
                     addr164:
                     §§push(5);
                     if(_loc6_ || _loc3_)
                     {
                     }
                     §§goto(addr184);
                  }
               }
               else
               {
                  §§push(2);
                  if(_loc6_ || _loc2_)
                  {
                     if(§§pop() === _loc4_)
                     {
                        §§goto(addr184);
                        §§push(2);
                     }
                     else
                     {
                        if(3 === _loc4_)
                        {
                           §§goto(addr184);
                           §§push(3);
                        }
                        else
                        {
                           §§push(4);
                        }
                        §§goto(addr184);
                     }
                     §§goto(addr184);
                  }
                  if(§§pop() === _loc4_)
                  {
                     §§push(4);
                     if(!(_loc6_ || param1))
                     {
                        addr176:
                        if(§§pop() === _loc4_)
                        {
                           §§goto(addr184);
                           §§push(6);
                        }
                        else
                        {
                           §§goto(addr184);
                           §§push(7);
                        }
                     }
                     §§goto(addr184);
                  }
                  else
                  {
                     §§push(5);
                     if(_loc6_ || _loc2_)
                     {
                        §§push(_loc4_);
                        if(!_loc5_)
                        {
                           if(§§pop() === §§pop())
                           {
                              §§goto(addr164);
                           }
                           else
                           {
                              §§push(6);
                              if(!_loc5_)
                              {
                                 §§goto(addr176);
                              }
                              §§goto(addr184);
                           }
                        }
                        §§goto(addr176);
                     }
                  }
               }
               §§goto(addr184);
            }
         }
         §§goto(addr184);
      }
      
      public function clean() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§5f§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     addr57:
                     this.§5f§.stop();
                     if(_loc2_ && _loc2_)
                     {
                     }
                     §§goto(addr70);
                  }
                  this.§5f§ = null;
                  if(_loc2_)
                  {
                  }
                  §§goto(addr70);
               }
               addr70:
               removeChild(this.§;!e§);
               if(_loc1_ || _loc2_)
               {
                  addr81:
                  this.§;!e§ = null;
               }
               return;
            }
            §§goto(addr57);
         }
         §§goto(addr81);
      }
      
      public function §76§(param1:String) : MovieClip
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §1F§.§"!_§(param1);
         _loc2_ = new _loc3_();
         if(_loc4_ || param1)
         {
            _loc2_.x = _loc2_.width / 2;
            if(_loc4_)
            {
               _loc2_.y = _loc2_.height / 2;
            }
         }
         return _loc2_;
      }
      
      public function set §=y§(param1:§0Y§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§5f§ = param1;
         }
      }
      
      public function get §=y§() : §0Y§
      {
         return this.§5f§;
      }
      
      public function get §!!P§() : Number
      {
         return this.§1!O§;
      }
      
      public function set §!!P§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§1!O§ = param1;
         }
      }
      
      public function get §9<§() : Number
      {
         return this.§^!Z§;
      }
      
      public function set §9<§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§^!Z§ = param1;
         }
      }
   }
}
