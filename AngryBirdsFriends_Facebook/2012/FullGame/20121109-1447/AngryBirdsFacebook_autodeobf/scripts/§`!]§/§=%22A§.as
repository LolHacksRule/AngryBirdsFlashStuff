package §`!]§
{
   import §'6§.§"]§;
   import §1!$§.§!"?§;
   import §1!$§.Sprite;
   import §6!D§.§0Y§;
   import §]!A§.;
   
   public class §="A§
   {
      
      public static const §9&§:String = "CutScene_Type_Intro";
      
      public static const §6[§:String = "CutScene_Type_Outro";
      
      public static const §72§:String = "CutScene_Type_Final_Outro";
       
      
      private var § !@§:§0Y§;
      
      private var §='§:String;
      
      private var §"Q§:Vector.<§>!D§>;
      
      private var §?!x§:Number;
      
      private var §[0§:Number;
      
      private var §`w§:Number;
      
      private var §%m§:Number;
      
      private var §3^§:Sprite;
      
      private var §"!B§:Boolean = true;
      
      private var §!!I§:uint;
      
      private var §[6§:Boolean;
      
      private var §?!l§:§!"?§;
      
      private var §="C§:§!"?§;
      
      public function §="A§(param1:Object, param2:String)
      {
         var _loc3_:§>!D§ = null;
         var _loc4_:Object = null;
         this.§"Q§ = new Vector.<§>!D§>();
         super();
         this.§?!x§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§='§ = §9&§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§='§ = §6[§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§0!8§(_loc4_);
               if(_loc3_)
               {
                  this.§"Q§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§"Q§)
            {
               if(_loc3_ is §9"-§)
               {
                  (_loc3_ as §9"-§).setSize(this.§`w§,this.§%m§);
                  (_loc3_ as §9"-§).§!!0§ = this.§"!B§;
               }
               else if(_loc3_ is §>!H§)
               {
                  (_loc3_ as §>!H§).setSize(this.§`w§,this.§%m§);
                  (_loc3_ as §>!H§).§9!M§ = this.§"!B§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§3^§;
      }
      
      private function §0!8§(param1:Object) : §>!D§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §>!D§.§?";§:
               return new §>!H§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §>!D§.§ !A§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §9"-§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §>!D§.§;"6§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §`!G§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §>!D§.§1d§:
               return new §2"!§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §>!D§.END:
               this.§[0§ = param1.time * 1000;
               break;
            case §>!D§.§]">§:
               this.§`w§ = param1.width;
               this.§%m§ = param1.height;
               break;
            case §>!D§.§,_§:
               this.§"!B§ = false;
               break;
            case §>!D§.§9"F§:
               this.§"!B§ = true;
               break;
            case §>!D§.§]R§:
               this.§!!I§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§3^§)
         {
            this.§3^§.dispose();
            this.§3^§ = null;
         }
         this.§"Q§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§3^§)
         {
            this.§3^§ = new Sprite();
         }
         this.§?!x§ += param1;
         var _loc2_:int = this.§"Q§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§"Q§[_loc2_].update(this.§?!x§,this.§3^§,this.§ !@§))
            {
               this.§"Q§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§,!W§();
         this.§+! §();
         this.§]^§();
         return this.§?!x§ < this.§[0§;
      }
      
      private function §]^§() : void
      {
         var _loc1_:int = §"]§.§!X§.§?!;§.height;
         var _loc2_:Number = §#6§.§>!F§;
         var _loc3_:Number = §#6§.§"e§;
         var _loc4_:int = (_loc1_ - this.§%m§ * _loc2_) / _loc2_;
         this.§3^§.y = _loc4_ >> 1;
      }
      
      private function §,!W§() : void
      {
         §"]§.§!X§.color = this.§!!I§;
      }
      
      private function §+! §() : void
      {
         if(this.§[6§)
         {
            return;
         }
         var _loc1_:Sprite = this.§3^§.getChildByName(§>!H§.§>J§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§[6§ = true;
      }
      
      public function clone(param1:§0Y§) : §="A§
      {
         var _loc3_:§>!D§ = null;
         var _loc2_:§="A§ = new §="A§(null,null);
         for each(_loc3_ in this.§"Q§)
         {
            _loc2_.§"Q§.push(_loc3_.clone());
         }
         _loc2_.§?!x§ = this.§?!x§;
         _loc2_.§[0§ = this.§[0§;
         _loc2_.§`w§ = this.§`w§;
         _loc2_.§%m§ = this.§%m§;
         _loc2_.§"!B§ = this.§"!B§;
         _loc2_.§!!I§ = this.§!!I§;
         _loc2_.§='§ = this.§='§;
         _loc2_.§ !@§ = param1;
         return _loc2_;
      }
      
      public function get §]"+§() : String
      {
         return this.§='§;
      }
      
      public function set §]"+§(param1:String) : void
      {
         this.§='§ = param1;
      }
   }
}
