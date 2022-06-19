package §4!r§
{
   import §+"6§.§5!H§;
   import §+I§.§9!%§;
   import §?"<§.§<"!§;
   import §]&§.Sprite;
   import §]&§.§[T§;
   
   public class §@,§
   {
      
      public static const §2W§:String = "CutScene_Type_Intro";
      
      public static const §->§:String = "CutScene_Type_Outro";
      
      public static const §^§:String = "CutScene_Type_Final_Outro";
       
      
      private var §9s§:§<"!§;
      
      private var §!![§:String;
      
      private var §[m§:Vector.<§8!A§>;
      
      private var §]!B§:Number;
      
      private var §,§:Number;
      
      private var §]"A§:Number;
      
      private var §>!>§:Number;
      
      private var §3!b§:Sprite;
      
      private var §2"8§:Boolean = true;
      
      private var §]"§:uint;
      
      private var §;!`§:Boolean;
      
      private var §]!I§:§[T§;
      
      private var §[!n§:§[T§;
      
      public function §@,§(param1:Object, param2:String)
      {
         var _loc3_:§8!A§ = null;
         var _loc4_:Object = null;
         this.§[m§ = new Vector.<§8!A§>();
         super();
         this.§]!B§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§!![§ = §2W§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§!![§ = §->§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§throw§(_loc4_);
               if(_loc3_)
               {
                  this.§[m§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§[m§)
            {
               if(_loc3_ is §;!5§)
               {
                  (_loc3_ as §;!5§).setSize(this.§]"A§,this.§>!>§);
                  (_loc3_ as §;!5§).§7Z§ = this.§2"8§;
               }
               else if(_loc3_ is §3!E§)
               {
                  (_loc3_ as §3!E§).setSize(this.§]"A§,this.§>!>§);
                  (_loc3_ as §3!E§).§7S§ = this.§2"8§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§3!b§;
      }
      
      private function §throw§(param1:Object) : §8!A§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §8!A§.§[!V§:
               return new §3!E§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §8!A§.§=!O§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §;!5§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §8!A§.§ !F§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §&!<§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §8!A§.§7">§:
               return new §[c§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §8!A§.END:
               this.§,§ = param1.time * 1000;
               break;
            case §8!A§.§@#§:
               this.§]"A§ = param1.width;
               this.§>!>§ = param1.height;
               break;
            case §8!A§.§%"7§:
               this.§2"8§ = false;
               break;
            case §8!A§.§>!7§:
               this.§2"8§ = true;
               break;
            case §8!A§.§@!l§:
               this.§]"§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§3!b§)
         {
            this.§3!b§.dispose();
            this.§3!b§ = null;
         }
         this.§[m§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§3!b§)
         {
            this.§3!b§ = new Sprite();
         }
         this.§]!B§ += param1;
         var _loc2_:int = this.§[m§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§[m§[_loc2_].update(this.§]!B§,this.§3!b§,this.§9s§))
            {
               this.§[m§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§!!6§();
         this.§@?§();
         this.§4D§();
         return this.§]!B§ < this.§,§;
      }
      
      private function §4D§() : void
      {
         var _loc1_:int = §5!H§.§%n§.§3V§.height;
         var _loc2_:Number = §9!%§.§=!f§;
         var _loc3_:Number = §9!%§.§,9§;
         var _loc4_:int = (_loc1_ - this.§>!>§ * _loc2_) / _loc2_;
         this.§3!b§.y = _loc4_ >> 1;
      }
      
      private function §!!6§() : void
      {
         §5!H§.§%n§.color = this.§]"§;
      }
      
      private function §@?§() : void
      {
         if(this.§;!`§)
         {
            return;
         }
         var _loc1_:Sprite = this.§3!b§.getChildByName(§3!E§.§"0§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§;!`§ = true;
      }
      
      public function clone(param1:§<"!§) : §@,§
      {
         var _loc3_:§8!A§ = null;
         var _loc2_:§@,§ = new §@,§(null,null);
         for each(_loc3_ in this.§[m§)
         {
            _loc2_.§[m§.push(_loc3_.clone());
         }
         _loc2_.§]!B§ = this.§]!B§;
         _loc2_.§,§ = this.§,§;
         _loc2_.§]"A§ = this.§]"A§;
         _loc2_.§>!>§ = this.§>!>§;
         _loc2_.§2"8§ = this.§2"8§;
         _loc2_.§]"§ = this.§]"§;
         _loc2_.§!![§ = this.§!![§;
         _loc2_.§9s§ = param1;
         return _loc2_;
      }
      
      public function get §<,§() : String
      {
         return this.§!![§;
      }
      
      public function set §<,§(param1:String) : void
      {
         this.§!![§ = param1;
      }
   }
}
