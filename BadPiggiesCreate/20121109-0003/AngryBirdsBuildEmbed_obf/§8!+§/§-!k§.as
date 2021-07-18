package §8!+§
{
   import § !u§.§8_§;
   import §+]§.§"U§;
   import flash.geom.Point;
   
   public class §-!k§ extends §]p§
   {
       
      
      private var §0@§:Point;
      
      public function §-!k§(param1:§"U§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            super(param1);
            if(!(_loc2_ && param1))
            {
               § do§(new §8_§());
            }
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.deActivate();
            if(!(_loc1_ && _loc2_))
            {
               addr28:
               this.§0@§ = null;
            }
            return;
         }
         §§goto(addr28);
      }
      
      override public function onMouseDown() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(§%!3§.mMousePosition != null)
            {
               if(!_loc2_)
               {
                  this.§0@§ = §%!3§.mMousePositionB2.clone();
               }
            }
         }
      }
      
      override public function onMouseUp() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§0@§ = null;
         }
      }
      
      override public function onMouseMove() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(this.§0@§ == null)
            {
               if(_loc4_)
               {
                  §§goto(addr25);
               }
            }
            var _loc1_:Number = §%!3§.getCamera().xCenterB2 + (this.§0@§.x - §%!3§.mMousePositionB2.x);
            var _loc2_:Number = §%!3§.getCamera().yCenterB2 + (this.§0@§.y - §%!3§.mMousePositionB2.y);
            if(_loc4_ || this)
            {
               §%!3§.getCamera().dragTo(_loc1_,_loc2_);
            }
            return;
         }
         addr25:
      }
   }
}
