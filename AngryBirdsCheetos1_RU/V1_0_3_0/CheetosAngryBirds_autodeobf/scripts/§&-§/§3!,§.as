package §&-§
{
   import §+!^§.§'Y§;
   import §9!a§.Sprite;
   import §9!a§.§]o§;
   import §=0§.§>O§;
   import §>N§.§"u§;
   
   public class §3!,§
   {
      
      public static const §-!'§:String = "CutScene_Type_Intro";
      
      public static const §;!Z§:String = "CutScene_Type_Outro";
      
      public static const §,_§:String = "CutScene_Type_Final_Outro";
       
      
      private var §<!P§:§>O§;
      
      private var §6!%§:String;
      
      private var §"I§:Vector.<§3v§>;
      
      private var §;c§:Number;
      
      private var §8!a§:Number;
      
      private var §!!V§:Number;
      
      private var §!`§:Number;
      
      private var §"$§:Sprite;
      
      private var §5y§:Boolean = true;
      
      private var §!?§:uint;
      
      private var §'!7§:Boolean;
      
      private var §^§:§]o§;
      
      private var §]!#§:§]o§;
      
      public function §3!,§(param1:Object, param2:String)
      {
         var _loc3_:§3v§ = null;
         var _loc4_:Object = null;
         this.§"I§ = new Vector.<§3v§>();
         super();
         this.§;c§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§6!%§ = §-!'§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§6!%§ = §;!Z§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§3;§(_loc4_);
               if(_loc3_)
               {
                  this.§"I§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§"I§)
            {
               if(_loc3_ is §5@§)
               {
                  (_loc3_ as §5@§).§ [§(this.§!!V§,this.§!`§);
                  (_loc3_ as §5@§).§7#§ = this.§5y§;
               }
               else if(_loc3_ is §9p§)
               {
                  (_loc3_ as §9p§).§ [§(this.§!!V§,this.§!`§);
                  (_loc3_ as §9p§).§2!$§ = this.§5y§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§"$§;
      }
      
      private function §3;§(param1:Object) : §3v§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §3v§.§=i§:
               return new §9p§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §3v§.§7z§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §5@§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §3v§.§3!8§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §`J§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §3v§.§!!,§:
               return new §2!>§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §3v§.END:
               this.§8!a§ = param1.time * 1000;
               break;
            case §3v§.§6G§:
               this.§!!V§ = param1.width;
               this.§!`§ = param1.height;
               break;
            case §3v§.§"!!§:
               this.§5y§ = false;
               break;
            case §3v§.§=!W§:
               this.§5y§ = true;
               break;
            case §3v§.§%>§:
               this.§!?§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§"$§)
         {
            this.§"$§.dispose();
            this.§"$§ = null;
         }
         this.§"I§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§"$§)
         {
            this.§"$§ = new Sprite();
         }
         this.§;c§ += param1;
         var _loc2_:int = this.§"I§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§"I§[_loc2_].update(this.§;c§,this.§"$§,this.§<!P§))
            {
               this.§"I§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§8Y§();
         this.§5G§();
         this.§?!C§();
         return this.§;c§ < this.§8!a§;
      }
      
      private function §?!C§() : void
      {
         var _loc1_:int = §"u§.§-2§.§5!=§.height;
         var _loc2_:Number = §'Y§.§;x§;
         var _loc3_:Number = §'Y§.§=!a§;
         var _loc4_:int = (_loc1_ - this.§!`§ * _loc2_) / _loc2_;
         this.§"$§.y = _loc4_ >> 1;
      }
      
      private function §8Y§() : void
      {
         §"u§.§-2§.color = this.§!?§;
      }
      
      private function §5G§() : void
      {
         if(this.§'!7§)
         {
            return;
         }
         var _loc1_:Sprite = this.§"$§.getChildByName(§9p§.§<X§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§'!7§ = true;
      }
      
      public function clone(param1:§>O§) : §3!,§
      {
         var _loc3_:§3v§ = null;
         var _loc2_:§3!,§ = new §3!,§(null,null);
         for each(_loc3_ in this.§"I§)
         {
            _loc2_.§"I§.push(_loc3_.clone());
         }
         _loc2_.§;c§ = this.§;c§;
         _loc2_.§8!a§ = this.§8!a§;
         _loc2_.§!!V§ = this.§!!V§;
         _loc2_.§!`§ = this.§!`§;
         _loc2_.§5y§ = this.§5y§;
         _loc2_.§!?§ = this.§!?§;
         _loc2_.§6!%§ = this.§6!%§;
         _loc2_.§<!P§ = param1;
         return _loc2_;
      }
      
      public function get §8!4§() : String
      {
         return this.§6!%§;
      }
      
      public function set §8!4§(param1:String) : void
      {
         this.§6!%§ = param1;
      }
   }
}
