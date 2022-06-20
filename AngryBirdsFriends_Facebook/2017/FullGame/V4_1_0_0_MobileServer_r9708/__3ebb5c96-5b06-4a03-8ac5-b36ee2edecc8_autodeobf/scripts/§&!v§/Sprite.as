package §&!v§
{
   import §1P§.Event;
   import §9+§.§]"+§;
   import flash.display3D.Context3D;
   import flash.geom.Matrix;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §]!J§:Vector.<§^"L§>;
      
      private var §+!3§:Boolean;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§=!N§();
         super.dispose();
      }
      
      private function §=!N§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(this.§]!J§)
         {
            _loc1_ = 0;
            _loc2_ = this.§]!J§.length;
            while(_loc1_ < _loc2_)
            {
               this.§]!J§[_loc1_].dispose();
               _loc1_++;
            }
            this.§]!J§ = null;
         }
      }
      
      public function flatten() : void
      {
         this.§+!3§ = true;
         §,#I§(Event.§#!G§);
      }
      
      public function §6<§() : void
      {
         this.§+!3§ = false;
         this.§=!N§();
      }
      
      public function get §?!I§() : Boolean
      {
         return this.§]!J§ != null || this.§+!3§;
      }
      
      override public function render(param1:§]"+§, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:Matrix = null;
         var _loc6_:Context3D = null;
         var _loc7_:int = 0;
         var _loc8_:§^"L§ = null;
         var _loc9_:int = 0;
         if(this.§]!J§ || this.§+!3§)
         {
            if(this.§]!J§ == null)
            {
               this.§]!J§ = new Vector.<§^"L§>(0);
            }
            if(this.§+!3§)
            {
               §^"L§.§""f§(this,this.§]!J§);
               this.§+!3§ = false;
            }
            _loc3_ = param2 * this.alpha;
            _loc4_ = this.§]!J§.length;
            _loc5_ = param1.§!p§;
            _loc6_ = param1.context;
            param1.§&!K§();
            param1.§[a§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc4_)
            {
               _loc9_ = (_loc8_ = this.§]!J§[_loc7_]).blendMode == §1i§.AUTO ? int(param1.blendMode) : int(_loc8_.blendMode);
               _loc8_.§"!2§(param1,_loc5_,_loc3_,_loc9_);
               _loc7_++;
            }
         }
         else
         {
            super.render(param1,param2);
         }
      }
   }
}
