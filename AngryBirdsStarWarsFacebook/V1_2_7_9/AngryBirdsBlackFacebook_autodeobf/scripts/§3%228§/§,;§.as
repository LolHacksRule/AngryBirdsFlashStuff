package §3"8§
{
   import §1"s§.§#"b§;
   import §1"s§.Sprite;
   import §3"$§.§&"0§;
   import §9!!§.§=!S§;
   import com.angrybirds.§;!e§;
   
   public class §,;§
   {
      
      public static const §6!,§:String = "CutScene_Type_Intro";
      
      public static const §]"L§:String = "CutScene_Type_Outro";
      
      public static const §>!3§:String = "CutScene_Type_Final_Outro";
       
      
      private var §-#7§:§&"0§;
      
      private var §;!w§:String;
      
      private var §#! §:Vector.<§-"r§>;
      
      private var §'"E§:Number;
      
      private var §-"v§:Number;
      
      private var §^"t§:Number;
      
      private var §`!y§:Number;
      
      private var § "6§:Sprite;
      
      private var §&"I§:Boolean = true;
      
      private var §;i§:uint;
      
      private var §>""§:Boolean;
      
      private var §5!P§:§#"b§;
      
      private var §%#%§:§#"b§;
      
      public function §,;§(param1:Object, param2:String)
      {
         var _loc3_:§-"r§ = null;
         var _loc4_:Object = null;
         this.§#! § = new Vector.<§-"r§>();
         super();
         this.§'"E§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§;!w§ = §6!,§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§;!w§ = §]"L§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§="u§(_loc4_);
               if(_loc3_)
               {
                  this.§#! §.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§#! §)
            {
               if(_loc3_ is §?X§)
               {
                  (_loc3_ as §?X§).setSize(this.§^"t§,this.§`!y§);
                  (_loc3_ as §?X§).§1"'§ = this.§&"I§;
               }
               else if(_loc3_ is §9U§)
               {
                  (_loc3_ as §9U§).setSize(this.§^"t§,this.§`!y§);
                  (_loc3_ as §9U§).§,!P§ = this.§&"I§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§ "6§;
      }
      
      private function §="u§(param1:Object) : §-"r§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §-"r§.§9!§:
               return new §9U§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §-"r§.§!g§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §?X§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §-"r§.§[!-§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §]!g§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §-"r§.§5"m§:
               return new §6!Z§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §-"r§.§!"w§:
               this.§-"v§ = param1.time * 1000;
               break;
            case §-"r§.§<"o§:
               this.§^"t§ = param1.width;
               this.§`!y§ = param1.height;
               break;
            case §-"r§.§]"7§:
               this.§&"I§ = false;
               break;
            case §-"r§.§`n§:
               this.§&"I§ = true;
               break;
            case §-"r§.§>;§:
               this.§;i§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§ "6§)
         {
            this.§ "6§.dispose();
            this.§ "6§ = null;
         }
         this.§#! § = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§ "6§)
         {
            this.§ "6§ = new Sprite();
         }
         this.§'"E§ += param1;
         var _loc2_:int = this.§#! §.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§#! §[_loc2_].update(this.§'"E§,this.§ "6§,this.§-#7§))
            {
               this.§#! §.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§[t§();
         this.§="U§();
         this.§!5§();
         return this.§'"E§ < this.§-"v§;
      }
      
      private function §!5§() : void
      {
         var _loc1_:int = §=!S§.§ "-§.height;
         var _loc2_:Number = §;!e§.§7"4§;
         var _loc3_:Number = §;!e§.§1"6§;
         var _loc4_:int = (_loc1_ - this.§`!y§ * _loc2_) / _loc2_;
         this.§ "6§.y = _loc4_ >> 1;
      }
      
      private function §[t§() : void
      {
         §=!S§.§8y§.color = this.§;i§;
      }
      
      private function §="U§() : void
      {
         if(this.§>""§)
         {
            return;
         }
         var _loc1_:Sprite = this.§ "6§.getChildByName(§9U§.§95§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§>""§ = true;
      }
      
      public function clone(param1:§&"0§) : §,;§
      {
         var _loc3_:§-"r§ = null;
         var _loc2_:§,;§ = new §,;§(null,null);
         for each(_loc3_ in this.§#! §)
         {
            _loc2_.§#! §.push(_loc3_.clone());
         }
         _loc2_.§'"E§ = this.§'"E§;
         _loc2_.§-"v§ = this.§-"v§;
         _loc2_.§^"t§ = this.§^"t§;
         _loc2_.§`!y§ = this.§`!y§;
         _loc2_.§&"I§ = this.§&"I§;
         _loc2_.§;i§ = this.§;i§;
         _loc2_.§;!w§ = this.§;!w§;
         _loc2_.§-#7§ = param1;
         return _loc2_;
      }
      
      public function get §0"d§() : String
      {
         return this.§;!w§;
      }
      
      public function set §0"d§(param1:String) : void
      {
         this.§;!w§ = param1;
      }
   }
}
