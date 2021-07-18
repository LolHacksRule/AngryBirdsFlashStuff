package § !u§
{
   import §+]§.§"U§;
   import §<!<§.§]K§;
   import com.rovio.assets.§1F§;
   import flash.display.MovieClip;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class §?K§ extends MovieClip
   {
       
      
      private var §!D§:TextField;
      
      public function §?K§()
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
         }
         var _loc1_:Class = §1F§.§"!_§("MovieClip_BirdIndex");
         var _loc2_:MovieClip = new _loc1_();
         var _loc3_:int = 0;
         do
         {
            if(_loc3_ >= _loc2_.numChildren)
            {
               if(!(_loc4_ && _loc2_))
               {
                  addr91:
                  addChild(_loc2_);
                  break;
               }
               break;
            }
            if(!(_loc2_.getChildAt(_loc3_) is TextField))
            {
               continue;
            }
            if(_loc5_)
            {
               this.§!D§ = _loc2_.getChildAt(_loc3_) as TextField;
               if(_loc5_ || _loc1_)
               {
                  addr76:
                  §§goto(addr91);
               }
               break;
            }
            §§goto(addr76);
            §§goto(addr91);
         }
         while(_loc3_++, !_loc4_);
         
      }
      
      public function update(param1:int, param2:§]K§, param3:§"U§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Point = null;
         §§push(param3);
         §§push(param2.mX);
         §§push(param2.mY);
         if(!_loc5_)
         {
            §§push(param2.radius);
            if(_loc6_)
            {
               §§push(§§pop() * 2.5);
            }
            §§push(§§pop() - §§pop());
         }
         _loc4_ = §§pop().§-!M§(§§pop(),§§pop());
         if(_loc6_ || param3)
         {
            this.x = _loc4_.x;
            if(!(_loc5_ && param1))
            {
               addr75:
               this.y = _loc4_.y;
               if(_loc6_ || param2)
               {
                  this.§!D§.text = (param1 + 1).toString();
               }
            }
            return;
         }
         §§goto(addr75);
      }
   }
}
