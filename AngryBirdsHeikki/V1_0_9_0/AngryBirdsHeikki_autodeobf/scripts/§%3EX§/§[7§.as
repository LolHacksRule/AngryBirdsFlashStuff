package §>X§
{
   import §#!f§.§,!0§;
   import §#!f§.Sprite;
   import §1y§.§&!B§;
   import §3!§.§-e§;
   import §>!F§.§9!Z§;
   
   public class §[7§
   {
      
      public static const §4U§:String = "CutScene_Type_Intro";
      
      public static const §"!"§:String = "CutScene_Type_Outro";
      
      public static const §!!>§:String = "CutScene_Type_Final_Outro";
       
      
      private var §-!<§:§-e§;
      
      private var §[!R§:String;
      
      private var §<!1§:Vector.<§5!4§>;
      
      private var §"x§:Number;
      
      private var §4r§:Number;
      
      private var §>5§:Number;
      
      private var §`!I§:Number;
      
      private var §3![§:Sprite;
      
      private var §&A§:Boolean = true;
      
      private var §63§:uint;
      
      private var §]Y§:Boolean;
      
      private var §6!K§:§,!0§;
      
      private var §`g§:§,!0§;
      
      public function §[7§(param1:Object, param2:String)
      {
         var _loc3_:§5!4§ = null;
         var _loc4_:Object = null;
         this.§<!1§ = new Vector.<§5!4§>();
         super();
         this.§"x§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§[!R§ = §4U§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§[!R§ = §"!"§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§>!N§(_loc4_);
               if(_loc3_)
               {
                  this.§<!1§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§<!1§)
            {
               if(_loc3_ is §8`§)
               {
                  (_loc3_ as §8`§).include(this.§>5§,this.§`!I§);
                  (_loc3_ as §8`§).§?!O§ = this.§&A§;
               }
               else if(_loc3_ is §=!$§)
               {
                  (_loc3_ as §=!$§).include(this.§>5§,this.§`!I§);
                  (_loc3_ as §=!$§).§8q§ = this.§&A§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§3![§;
      }
      
      private function §>!N§(param1:Object) : §5!4§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §5!4§.§5!]§:
               return new §=!$§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §5!4§.§2A§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §8`§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §5!4§.§9J§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §@!L§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §5!4§.§'U§:
               return new §]!;§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §5!4§.END:
               this.§4r§ = param1.time * 1000;
               break;
            case §5!4§.§-5§:
               this.§>5§ = param1.width;
               this.§`!I§ = param1.height;
               break;
            case §5!4§.§[!M§:
               this.§&A§ = false;
               break;
            case §5!4§.§=C§:
               this.§&A§ = true;
               break;
            case §5!4§.§`v§:
               this.§63§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§3![§)
         {
            this.§3![§.dispose();
            this.§3![§ = null;
         }
         this.§<!1§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§3![§)
         {
            this.§3![§ = new Sprite();
         }
         this.§"x§ += param1;
         var _loc2_:int = this.§<!1§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§<!1§[_loc2_].update(this.§"x§,this.§3![§,this.§-!<§))
            {
               this.§<!1§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§,!1§();
         this.§=A§();
         this.§4K§();
         return this.§"x§ < this.§4r§;
      }
      
      private function §4K§() : void
      {
         var _loc1_:int = §&!B§.§^8§.§1L§.height;
         var _loc2_:Number = §9!Z§.§0!6§;
         var _loc3_:Number = §9!Z§.§+C§;
         var _loc4_:int = (_loc1_ - this.§`!I§ * _loc2_) / _loc2_;
         this.§3![§.y = _loc4_ >> 1;
      }
      
      private function §,!1§() : void
      {
         §&!B§.§^8§.color = this.§63§;
      }
      
      private function §=A§() : void
      {
         if(this.§]Y§)
         {
            return;
         }
         var _loc1_:Sprite = this.§3![§.getChildByName(§=!$§.§&&§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§]Y§ = true;
      }
      
      public function clone(param1:§-e§) : §[7§
      {
         var _loc3_:§5!4§ = null;
         var _loc2_:§[7§ = new §[7§(null,null);
         for each(_loc3_ in this.§<!1§)
         {
            _loc2_.§<!1§.push(_loc3_.clone());
         }
         _loc2_.§"x§ = this.§"x§;
         _loc2_.§4r§ = this.§4r§;
         _loc2_.§>5§ = this.§>5§;
         _loc2_.§`!I§ = this.§`!I§;
         _loc2_.§&A§ = this.§&A§;
         _loc2_.§63§ = this.§63§;
         _loc2_.§[!R§ = this.§[!R§;
         _loc2_.§-!<§ = param1;
         return _loc2_;
      }
      
      public function get §3!4§() : String
      {
         return this.§[!R§;
      }
      
      public function set §3!4§(param1:String) : void
      {
         this.§[!R§ = param1;
      }
   }
}
