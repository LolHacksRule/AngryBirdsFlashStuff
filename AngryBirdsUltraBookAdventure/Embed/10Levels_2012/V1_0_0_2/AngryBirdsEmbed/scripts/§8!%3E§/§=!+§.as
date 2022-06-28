package §8!>§
{
   import §#!;§.§;T§;
   import §'k§.§ >§;
   import §5H§.§[k§;
   import §9W§.§3g§;
   import §9W§.Sprite;
   
   public class §=!+§
   {
      
      public static const §7d§:String = "CutScene_Type_Intro";
      
      public static const §8!,§:String = "CutScene_Type_Outro";
      
      public static const §5_§:String = "CutScene_Type_Final_Outro";
       
      
      private var §`!8§:§ >§;
      
      private var §<!D§:String;
      
      private var §#5§:Vector.<§1^§>;
      
      private var §3j§:Number;
      
      private var §>!F§:Number;
      
      private var § l§:Number;
      
      private var §4N§:Number;
      
      private var §[0§:Sprite;
      
      private var §+Y§:Boolean = true;
      
      private var §,C§:uint;
      
      private var §>x§:Boolean;
      
      private var §2t§:§3g§;
      
      private var §`!;§:§3g§;
      
      public function §=!+§(param1:Object, param2:String)
      {
         var _loc3_:§1^§ = null;
         var _loc4_:Object = null;
         this.§#5§ = new Vector.<§1^§>();
         super();
         this.§3j§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§<!D§ = §7d§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§<!D§ = §8!,§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§[Z§(_loc4_);
               if(_loc3_)
               {
                  this.§#5§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§#5§)
            {
               if(_loc3_ is § D§)
               {
                  (_loc3_ as § D§).setSize(this.§ l§,this.§4N§);
                  (_loc3_ as § D§).§^! § = this.§+Y§;
               }
               else if(_loc3_ is §>T§)
               {
                  (_loc3_ as §>T§).setSize(this.§ l§,this.§4N§);
                  (_loc3_ as §>T§).§9!$§ = this.§+Y§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§[0§;
      }
      
      private function §[Z§(param1:Object) : §1^§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §1^§.§!1§:
               return new §>T§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §1^§.§?I§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new § D§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §1^§.§;u§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §%N§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §1^§.§]!D§:
               return new §]t§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §1^§.END:
               this.§>!F§ = param1.time * 1000;
               break;
            case §1^§.§2=§:
               this.§ l§ = param1.width;
               this.§4N§ = param1.height;
               break;
            case §1^§.§'e§:
               this.§+Y§ = false;
               break;
            case §1^§.§@!;§:
               this.§+Y§ = true;
               break;
            case §1^§.§6!E§:
               this.§,C§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§[0§)
         {
            this.§[0§.dispose();
            this.§[0§ = null;
         }
         this.§#5§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§[0§)
         {
            this.§[0§ = new Sprite();
         }
         this.§3j§ += param1;
         var _loc2_:int = this.§#5§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§#5§[_loc2_].update(this.§3j§,this.§[0§,this.§`!8§))
            {
               this.§#5§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§!!'§();
         this.§7!7§();
         this.§#]§();
         return this.§3j§ < this.§>!F§;
      }
      
      private function §#]§() : void
      {
         var _loc1_:int = §;T§.§,H§.§2!&§.height;
         var _loc2_:Number = §[k§.§3!5§;
         var _loc3_:Number = §[k§.§@$§;
         var _loc4_:int = (_loc1_ - this.§4N§ * _loc2_) / _loc2_;
         this.§[0§.y = _loc4_ >> 1;
      }
      
      private function §!!'§() : void
      {
         §;T§.§,H§.color = this.§,C§;
      }
      
      private function §7!7§() : void
      {
         if(this.§>x§)
         {
            return;
         }
         var _loc1_:Sprite = this.§[0§.getChildByName(§>T§.§9Y§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§>x§ = true;
      }
      
      public function clone(param1:§ >§) : §=!+§
      {
         var _loc3_:§1^§ = null;
         var _loc2_:§=!+§ = new §=!+§(null,null);
         for each(_loc3_ in this.§#5§)
         {
            _loc2_.§#5§.push(_loc3_.clone());
         }
         _loc2_.§3j§ = this.§3j§;
         _loc2_.§>!F§ = this.§>!F§;
         _loc2_.§ l§ = this.§ l§;
         _loc2_.§4N§ = this.§4N§;
         _loc2_.§+Y§ = this.§+Y§;
         _loc2_.§,C§ = this.§,C§;
         _loc2_.§<!D§ = this.§<!D§;
         _loc2_.§`!8§ = param1;
         return _loc2_;
      }
      
      public function get §!K§() : String
      {
         return this.§<!D§;
      }
      
      public function set §!K§(param1:String) : void
      {
         this.§<!D§ = param1;
      }
   }
}
