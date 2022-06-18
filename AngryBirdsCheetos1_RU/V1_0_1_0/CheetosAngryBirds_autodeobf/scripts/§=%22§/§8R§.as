package §="§
{
   import §"!S§.§"_§;
   import §"4§.§<h§;
   import §&!5§.§2G§;
   import §&!5§.Sprite;
   import §9!2§.§'![§;
   
   public class §8R§
   {
      
      public static const §2!<§:String = "CutScene_Type_Intro";
      
      public static const §13§:String = "CutScene_Type_Outro";
      
      public static const §>!J§:String = "CutScene_Type_Final_Outro";
       
      
      private var §5-§:§'![§;
      
      private var §>!8§:String;
      
      private var §3!I§:Vector.<§2!C§>;
      
      private var §9!6§:Number;
      
      private var §4!H§:Number;
      
      private var §'n§:Number;
      
      private var §+!#§:Number;
      
      private var §6`§:Sprite;
      
      private var §=7§:Boolean = true;
      
      private var § !I§:uint;
      
      private var § !J§:Boolean;
      
      private var §8E§:§2G§;
      
      private var §]!4§:§2G§;
      
      public function §8R§(param1:Object, param2:String)
      {
         var _loc3_:§2!C§ = null;
         var _loc4_:Object = null;
         this.§3!I§ = new Vector.<§2!C§>();
         super();
         this.§9!6§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§>!8§ = §2!<§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§>!8§ = §13§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§`_§(_loc4_);
               if(_loc3_)
               {
                  this.§3!I§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§3!I§)
            {
               if(_loc3_ is §4!E§)
               {
                  (_loc3_ as §4!E§).§#m§(this.§'n§,this.§+!#§);
                  (_loc3_ as §4!E§).§4!a§ = this.§=7§;
               }
               else if(_loc3_ is §1H§)
               {
                  (_loc3_ as §1H§).§#m§(this.§'n§,this.§+!#§);
                  (_loc3_ as §1H§).§]!X§ = this.§=7§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§6`§;
      }
      
      private function §`_§(param1:Object) : §2!C§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §2!C§.§+!Y§:
               return new §1H§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §2!C§.§7!R§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §4!E§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §2!C§.§91§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §>![§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §2!C§.§5!T§:
               return new §&!H§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §2!C§.END:
               this.§4!H§ = param1.time * 1000;
               break;
            case §2!C§.§0!F§:
               this.§'n§ = param1.width;
               this.§+!#§ = param1.height;
               break;
            case §2!C§.§<A§:
               this.§=7§ = false;
               break;
            case §2!C§.§^!P§:
               this.§=7§ = true;
               break;
            case §2!C§.§]#§:
               this.§ !I§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§6`§)
         {
            this.§6`§.dispose();
            this.§6`§ = null;
         }
         this.§3!I§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§6`§)
         {
            this.§6`§ = new Sprite();
         }
         this.§9!6§ += param1;
         var _loc2_:int = this.§3!I§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§3!I§[_loc2_].update(this.§9!6§,this.§6`§,this.§5-§))
            {
               this.§3!I§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§5!M§();
         this.§2+§();
         this.§]P§();
         return this.§9!6§ < this.§4!H§;
      }
      
      private function §]P§() : void
      {
         var _loc1_:int = §<h§.§%!]§.§-!M§.height;
         var _loc2_:Number = §"_§.§5[§;
         var _loc3_:Number = §"_§.§5o§;
         var _loc4_:int = (_loc1_ - this.§+!#§ * _loc2_) / _loc2_;
         this.§6`§.y = _loc4_ >> 1;
      }
      
      private function §5!M§() : void
      {
         §<h§.§%!]§.color = this.§ !I§;
      }
      
      private function §2+§() : void
      {
         if(this.§ !J§)
         {
            return;
         }
         var _loc1_:Sprite = this.§6`§.getChildByName(§1H§.§&!C§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§ !J§ = true;
      }
      
      public function clone(param1:§'![§) : §8R§
      {
         var _loc3_:§2!C§ = null;
         var _loc2_:§8R§ = new §8R§(null,null);
         for each(_loc3_ in this.§3!I§)
         {
            _loc2_.§3!I§.push(_loc3_.clone());
         }
         _loc2_.§9!6§ = this.§9!6§;
         _loc2_.§4!H§ = this.§4!H§;
         _loc2_.§'n§ = this.§'n§;
         _loc2_.§+!#§ = this.§+!#§;
         _loc2_.§=7§ = this.§=7§;
         _loc2_.§ !I§ = this.§ !I§;
         _loc2_.§>!8§ = this.§>!8§;
         _loc2_.§5-§ = param1;
         return _loc2_;
      }
      
      public function get §^P§() : String
      {
         return this.§>!8§;
      }
      
      public function set §^P§(param1:String) : void
      {
         this.§>!8§ = param1;
      }
   }
}
