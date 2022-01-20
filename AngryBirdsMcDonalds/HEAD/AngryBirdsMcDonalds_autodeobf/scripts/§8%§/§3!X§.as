package §8%§
{
   import §%%§.§3P§;
   import §7F§.§2M§;
   import §9`§.§#U§;
   import §`!n§.§ !i§;
   import §`!n§.Sprite;
   
   public class §3!X§
   {
      
      public static const §<!=§:String = "CutScene_Type_Intro";
      
      public static const §[H§:String = "CutScene_Type_Outro";
      
      public static const §]!<§:String = "CutScene_Type_Final_Outro";
       
      
      private var §9k§:§#U§;
      
      private var §catch§:String;
      
      private var §5T§:Vector.<§]p§>;
      
      private var §@!M§:Number;
      
      private var §'!S§:Number;
      
      private var §9E§:Number;
      
      private var §;`§:Number;
      
      private var §]!M§:Sprite;
      
      private var §+d§:Boolean = true;
      
      private var §<L§:uint;
      
      private var §99§:Boolean;
      
      private var §"!p§:§ !i§;
      
      private var §8!=§:§ !i§;
      
      public function §3!X§(param1:Object, param2:String)
      {
         var _loc3_:§]p§ = null;
         var _loc4_:Object = null;
         this.§5T§ = new Vector.<§]p§>();
         super();
         this.§@!M§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§catch§ = §<!=§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§catch§ = §[H§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§;!X§(_loc4_);
               if(_loc3_)
               {
                  this.§5T§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§5T§)
            {
               if(_loc3_ is §@!`§)
               {
                  (_loc3_ as §@!`§).§+Y§(this.§9E§,this.§;`§);
                  (_loc3_ as §@!`§).§1a§ = this.§+d§;
               }
               else if(_loc3_ is §3!5§)
               {
                  (_loc3_ as §3!5§).§+Y§(this.§9E§,this.§;`§);
                  (_loc3_ as §3!5§).§+!K§ = this.§+d§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§]!M§;
      }
      
      private function §;!X§(param1:Object) : §]p§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §]p§.§%!;§:
               return new §3!5§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §]p§.§"N§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §@!`§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §]p§.§>a§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §7!X§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §]p§.§@!W§:
               return new §3c§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §]p§.END:
               this.§'!S§ = param1.time * 1000;
               break;
            case §]p§.§54§:
               this.§9E§ = param1.width;
               this.§;`§ = param1.height;
               break;
            case §]p§.§0!U§:
               this.§+d§ = false;
               break;
            case §]p§.§6V§:
               this.§+d§ = true;
               break;
            case §]p§.§7o§:
               this.§<L§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§]!M§)
         {
            this.§]!M§.dispose();
            this.§]!M§ = null;
         }
         this.§5T§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§]!M§)
         {
            this.§]!M§ = new Sprite();
         }
         this.§@!M§ += param1;
         var _loc2_:int = this.§5T§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§5T§[_loc2_].update(this.§@!M§,this.§]!M§,this.§9k§))
            {
               this.§5T§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§%!h§();
         this.§8-§();
         this.§;!Z§();
         return this.§@!M§ < this.§'!S§;
      }
      
      private function §;!Z§() : void
      {
         var _loc1_:int = §3P§.§6_§.§5!4§.height;
         var _loc2_:Number = §2M§.§4f§;
         var _loc3_:Number = §2M§.§50§;
         var _loc4_:int = (_loc1_ - this.§;`§ * _loc2_) / _loc2_;
         this.§]!M§.y = _loc4_ >> 1;
      }
      
      private function §%!h§() : void
      {
         §3P§.§6_§.color = this.§<L§;
      }
      
      private function §8-§() : void
      {
         if(this.§99§)
         {
            return;
         }
         var _loc1_:Sprite = this.§]!M§.getChildByName(§3!5§.§1Z§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§99§ = true;
      }
      
      public function clone(param1:§#U§) : §3!X§
      {
         var _loc3_:§]p§ = null;
         var _loc2_:§3!X§ = new §3!X§(null,null);
         for each(_loc3_ in this.§5T§)
         {
            _loc2_.§5T§.push(_loc3_.clone());
         }
         _loc2_.§@!M§ = this.§@!M§;
         _loc2_.§'!S§ = this.§'!S§;
         _loc2_.§9E§ = this.§9E§;
         _loc2_.§;`§ = this.§;`§;
         _loc2_.§+d§ = this.§+d§;
         _loc2_.§<L§ = this.§<L§;
         _loc2_.§catch§ = this.§catch§;
         _loc2_.§9k§ = param1;
         return _loc2_;
      }
      
      public function get §2O§() : String
      {
         return this.§catch§;
      }
      
      public function set §2O§(param1:String) : void
      {
         this.§catch§ = param1;
      }
   }
}
