package §,!M§
{
   import §#!@§.§?h§;
   import §#!@§.Sprite;
   import §6h§.§[!4§;
   import §7!§.§,L§;
   import §[v§.§0&§;
   
   public class §0!K§
   {
      
      public static const §=!D§:String = "CutScene_Type_Intro";
      
      public static const §1y§:String = "CutScene_Type_Outro";
      
      public static const §"!@§:String = "CutScene_Type_Final_Outro";
       
      
      private var §4d§:§0&§;
      
      private var §`k§:String;
      
      private var §=v§:Vector.<§;!0§>;
      
      private var §%A§:Number;
      
      private var §%§:Number;
      
      private var §'o§:Number;
      
      private var §+L§:Number;
      
      private var §;e§:Sprite;
      
      private var §=@§:Boolean = true;
      
      private var §@R§:uint;
      
      private var §finally§:Boolean;
      
      private var §7!9§:§?h§;
      
      private var §28§:§?h§;
      
      public function §0!K§(param1:Object, param2:String)
      {
         var _loc3_:§;!0§ = null;
         var _loc4_:Object = null;
         this.§=v§ = new Vector.<§;!0§>();
         super();
         this.§%A§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§`k§ = §=!D§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§`k§ = §1y§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§5&§(_loc4_);
               if(_loc3_)
               {
                  this.§=v§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§=v§)
            {
               if(_loc3_ is §+!&§)
               {
                  (_loc3_ as §+!&§).setSize(this.§'o§,this.§+L§);
                  (_loc3_ as §+!&§).§%z§ = this.§=@§;
               }
               else if(_loc3_ is §"!F§)
               {
                  (_loc3_ as §"!F§).setSize(this.§'o§,this.§+L§);
                  (_loc3_ as §"!F§).§;Q§ = this.§=@§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§;e§;
      }
      
      private function §5&§(param1:Object) : §;!0§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §;!0§.§&_§:
               return new §"!F§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §;!0§.§9W§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §+!&§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §;!0§.§]w§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §`Z§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §;!0§.§9!?§:
               return new §7!L§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §;!0§.END:
               this.§%§ = param1.time * 1000;
               break;
            case §;!0§.§ e§:
               this.§'o§ = param1.width;
               this.§+L§ = param1.height;
               break;
            case §;!0§.§&!K§:
               this.§=@§ = false;
               break;
            case §;!0§.§61§:
               this.§=@§ = true;
               break;
            case §;!0§.§#!9§:
               this.§@R§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§;e§)
         {
            this.§;e§.dispose();
            this.§;e§ = null;
         }
         this.§=v§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§;e§)
         {
            this.§;e§ = new Sprite();
         }
         this.§%A§ += param1;
         var _loc2_:int = this.§=v§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§=v§[_loc2_].update(this.§%A§,this.§;e§,this.§4d§))
            {
               this.§=v§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§6!1§();
         this.§!P§();
         return this.§%A§ < this.§%§;
      }
      
      private function §!P§() : void
      {
         var _loc1_:int = §,L§.§1N§.height;
         var _loc2_:Number = §[!4§.§4p§;
         var _loc3_:Number = §[!4§.§<^§;
         var _loc4_:int = (_loc1_ - this.§+L§ * _loc2_) / _loc2_;
         this.§;e§.y = _loc4_ >> 1;
      }
      
      private function §6!1§() : void
      {
         §,L§.§3v§.color = this.§@R§;
      }
      
      public function clone(param1:§0&§) : §0!K§
      {
         var _loc3_:§;!0§ = null;
         var _loc2_:§0!K§ = new §0!K§(null,null);
         for each(_loc3_ in this.§=v§)
         {
            _loc2_.§=v§.push(_loc3_.clone());
         }
         _loc2_.§%A§ = this.§%A§;
         _loc2_.§%§ = this.§%§;
         _loc2_.§'o§ = this.§'o§;
         _loc2_.§+L§ = this.§+L§;
         _loc2_.§=@§ = this.§=@§;
         _loc2_.§@R§ = this.§@R§;
         _loc2_.§`k§ = this.§`k§;
         _loc2_.§4d§ = param1;
         return _loc2_;
      }
      
      public function get §5u§() : String
      {
         return this.§`k§;
      }
      
      public function set §5u§(param1:String) : void
      {
         this.§`k§ = param1;
      }
   }
}
