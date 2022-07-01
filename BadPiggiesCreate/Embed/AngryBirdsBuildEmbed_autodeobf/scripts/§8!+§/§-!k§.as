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
         super(param1);
         § do§(new §8_§());
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§0@§ = null;
      }
      
      override public function onMouseDown() : void
      {
         if(§%!3§.mMousePosition != null)
         {
            this.§0@§ = §%!3§.mMousePositionB2.clone();
         }
      }
      
      override public function onMouseUp() : void
      {
         this.§0@§ = null;
      }
      
      override public function onMouseMove() : void
      {
         if(this.§0@§ == null)
         {
            return;
         }
         var _loc1_:Number = §%!3§.getCamera().xCenterB2 + (this.§0@§.x - §%!3§.mMousePositionB2.x);
         var _loc2_:Number = §%!3§.getCamera().yCenterB2 + (this.§0@§.y - §%!3§.mMousePositionB2.y);
         §%!3§.getCamera().dragTo(_loc1_,_loc2_);
      }
   }
}
