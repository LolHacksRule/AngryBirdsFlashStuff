package §0R§
{
   import §!Y§.§[o§;
   import §-Z§.§?h§;
   import §1n§.§5#§;
   import §^V§.§09§;
   import §^V§.Sprite;
   
   public class §;g§
   {
      
      public static const § ! §:String = "CutScene_Type_Intro";
      
      public static const §=s§:String = "CutScene_Type_Outro";
      
      public static const §%Z§:String = "CutScene_Type_Final_Outro";
       
      
      private var §1y§:§5#§;
      
      private var §2!;§:String;
      
      private var §'I§:Vector.<§6! §>;
      
      private var § !A§:Number;
      
      private var §,!6§:Number;
      
      private var §?!#§:Number;
      
      private var §26§:Number;
      
      private var §1-§:Sprite;
      
      private var §7!,§:Boolean = true;
      
      private var §=K§:uint;
      
      private var §null§:Boolean;
      
      private var §0v§:§09§;
      
      private var §?!-§:§09§;
      
      public function §;g§(param1:Object, param2:String)
      {
         var _loc3_:§6! § = null;
         var _loc4_:Object = null;
         this.§'I§ = new Vector.<§6! §>();
         super();
         this.§ !A§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§2!;§ = § ! §;
            }
            else if(param2.search("complete") != -1)
            {
               this.§2!;§ = §=s§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§+M§(_loc4_);
               if(_loc3_)
               {
                  this.§'I§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§'I§)
            {
               if(_loc3_ is §-g§)
               {
                  (_loc3_ as §-g§).setSize(this.§?!#§,this.§26§);
                  (_loc3_ as §-g§).§0%§ = this.§7!,§;
               }
               else if(_loc3_ is §1d§)
               {
                  (_loc3_ as §1d§).setSize(this.§?!#§,this.§26§);
                  (_loc3_ as §1d§).§1c§ = this.§7!,§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§1-§;
      }
      
      private function §+M§(param1:Object) : §6! §
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §6! §.§>r§:
               return new §1d§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §6! §.§1E§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §-g§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §6! §.§;!"§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §2[§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §6! §.§>?§:
               return new §9u§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §6! §.END:
               this.§,!6§ = param1.time * 1000;
               break;
            case §6! §.§=-§:
               this.§?!#§ = param1.width;
               this.§26§ = param1.height;
               break;
            case §6! §.§-B§:
               this.§7!,§ = false;
               break;
            case §6! §.§44§:
               this.§7!,§ = true;
               break;
            case §6! §.§2B§:
               this.§=K§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§1-§)
         {
            this.§1-§.dispose();
            this.§1-§ = null;
         }
         this.§'I§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§1-§)
         {
            this.§1-§ = new Sprite();
         }
         this.§ !A§ += param1;
         var _loc2_:int = this.§'I§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§'I§[_loc2_].update(this.§ !A§,this.§1-§,this.§1y§))
            {
               this.§'I§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§8A§();
         this.§^!G§();
         this.§4!B§();
         return this.§ !A§ < this.§,!6§;
      }
      
      private function §4!B§() : void
      {
         var _loc1_:int = §?h§.§ n§.§"C§.height;
         var _loc2_:Number = §[o§.§<T§;
         var _loc3_:Number = §[o§.§>k§;
         var _loc4_:int = (_loc1_ - this.§26§ * _loc2_) / _loc2_;
         this.§1-§.y = _loc4_ >> 1;
      }
      
      private function §8A§() : void
      {
         §?h§.§ n§.color = this.§=K§;
      }
      
      private function §^!G§() : void
      {
         if(this.§null§)
         {
            return;
         }
         var _loc1_:Sprite = this.§1-§.getChildByName(§1d§.§0k§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§null§ = true;
      }
      
      public function clone(param1:§5#§) : §;g§
      {
         var _loc3_:§6! § = null;
         var _loc2_:§;g§ = new §;g§(null,null);
         for each(_loc3_ in this.§'I§)
         {
            _loc2_.§'I§.push(_loc3_.clone());
         }
         _loc2_.§ !A§ = this.§ !A§;
         _loc2_.§,!6§ = this.§,!6§;
         _loc2_.§?!#§ = this.§?!#§;
         _loc2_.§26§ = this.§26§;
         _loc2_.§7!,§ = this.§7!,§;
         _loc2_.§=K§ = this.§=K§;
         _loc2_.§2!;§ = this.§2!;§;
         _loc2_.§1y§ = param1;
         return _loc2_;
      }
      
      public function get §?g§() : String
      {
         return this.§2!;§;
      }
      
      public function set §?g§(param1:String) : void
      {
         this.§2!;§ = param1;
      }
   }
}
