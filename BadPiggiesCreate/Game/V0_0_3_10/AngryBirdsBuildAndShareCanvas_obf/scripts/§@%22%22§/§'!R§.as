package §@""§
{
   import §>"2§.§^F§;
   import com.rovio.assets.§5!+§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §'!R§ extends Sprite
   {
      
      public static const §&!E§:String = "ParticleStar";
      
      public static const §?-§:String = "ParticlePig";
       
      
      protected var §1!o§:Sprite;
      
      protected var §[!a§:Number;
      
      protected var §<P§:Number;
      
      protected var §-3§:§^F§;
      
      public function §'!R§(param1:String)
      {
         super();
         this.§1!o§ = this.§+",§(param1);
         addChild(this.§1!o§);
         this.mouseEnabled = false;
         this.§1!o§.x = -this.§1!o§.width / 2;
         this.§1!o§.y = -this.§1!o§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§-3§)
         {
            this.§-3§.stop();
            this.§-3§ = null;
         }
         removeChild(this.§1!o§);
         this.§1!o§ = null;
      }
      
      public function §+",§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §5!+§.§,]§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §[7§(param1:§^F§) : void
      {
         this.§-3§ = param1;
      }
      
      public function get §[7§() : §^F§
      {
         return this.§-3§;
      }
      
      public function get §20§() : Number
      {
         return this.§[!a§;
      }
      
      public function set §20§(param1:Number) : void
      {
         this.§[!a§ = param1;
      }
      
      public function get §>!P§() : Number
      {
         return this.§<P§;
      }
      
      public function set §>!P§(param1:Number) : void
      {
         this.§<P§ = param1;
      }
   }
}
