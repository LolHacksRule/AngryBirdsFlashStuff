package §[!<§
{
   import §"!5§.§,!!§;
   import §%-§.Sprite;
   import §%-§.§^K§;
   import §&p§.§'_§;
   import §<h§.§;@§;
   
   public class §,c§
   {
      
      public static const §>!+§:String = "CutScene_Type_Intro";
      
      public static const §[Z§:String = "CutScene_Type_Outro";
      
      public static const §<!G§:String = "CutScene_Type_Final_Outro";
       
      
      private var § 7§:§;@§;
      
      private var §&§:String;
      
      private var §]R§:Vector.<§#v§>;
      
      private var §=,§:Number;
      
      private var §'Y§:Number;
      
      private var §9Q§:Number;
      
      private var §9p§:Number;
      
      private var §0W§:Sprite;
      
      private var §8!F§:Boolean = true;
      
      private var §0Z§:uint;
      
      private var §6!$§:Boolean;
      
      private var §?F§:§^K§;
      
      private var §1m§:§^K§;
      
      public function §,c§(param1:Object, param2:String)
      {
         var _loc3_:§#v§ = null;
         var _loc4_:Object = null;
         this.§]R§ = new Vector.<§#v§>();
         super();
         this.§=,§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§&§ = §>!+§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§&§ = §[Z§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§36§(_loc4_);
               if(_loc3_)
               {
                  this.§]R§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§]R§)
            {
               if(_loc3_ is §1S§)
               {
                  (_loc3_ as §1S§).setSize(this.§9Q§,this.§9p§);
                  (_loc3_ as §1S§).§#&§ = this.§8!F§;
               }
               else if(_loc3_ is §6u§)
               {
                  (_loc3_ as §6u§).setSize(this.§9Q§,this.§9p§);
                  (_loc3_ as §6u§).§`!&§ = this.§8!F§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§0W§;
      }
      
      private function §36§(param1:Object) : §#v§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §#v§.§>L§:
               return new §6u§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §#v§.§@8§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §1S§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §#v§.§3M§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §7A§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §#v§.§2Y§:
               return new §1§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §#v§.END:
               this.§'Y§ = param1.time * 1000;
               break;
            case §#v§.§,1§:
               this.§9Q§ = param1.width;
               this.§9p§ = param1.height;
               break;
            case §#v§.§&!3§:
               this.§8!F§ = false;
               break;
            case §#v§.§]-§:
               this.§8!F§ = true;
               break;
            case §#v§.§&>§:
               this.§0Z§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§0W§)
         {
            this.§0W§.dispose();
            this.§0W§ = null;
         }
         this.§]R§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§0W§)
         {
            this.§0W§ = new Sprite();
         }
         this.§=,§ += param1;
         var _loc2_:int = this.§]R§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§]R§[_loc2_].update(this.§=,§,this.§0W§,this.§ 7§))
            {
               this.§]R§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§?%§();
         this.§^U§();
         this.native();
         return this.§=,§ < this.§'Y§;
      }
      
      private function native() : void
      {
         var _loc1_:int = §'_§.§17§.§^w§.height;
         var _loc2_:Number = §,!!§.§0!3§;
         var _loc3_:Number = §,!!§.§,`§;
         var _loc4_:int = (_loc1_ - this.§9p§ * _loc2_) / _loc2_;
         this.§0W§.y = _loc4_ >> 1;
      }
      
      private function §?%§() : void
      {
         §'_§.§17§.color = this.§0Z§;
      }
      
      private function §^U§() : void
      {
         if(this.§6!$§)
         {
            return;
         }
         var _loc1_:Sprite = this.§0W§.getChildByName(§6u§.override) as Sprite;
         if(!_loc1_)
         {
         }
         this.§6!$§ = true;
      }
      
      public function clone(param1:§;@§) : §,c§
      {
         var _loc3_:§#v§ = null;
         var _loc2_:§,c§ = new §,c§(null,null);
         for each(_loc3_ in this.§]R§)
         {
            _loc2_.§]R§.push(_loc3_.clone());
         }
         _loc2_.§=,§ = this.§=,§;
         _loc2_.§'Y§ = this.§'Y§;
         _loc2_.§9Q§ = this.§9Q§;
         _loc2_.§9p§ = this.§9p§;
         _loc2_.§8!F§ = this.§8!F§;
         _loc2_.§0Z§ = this.§0Z§;
         _loc2_.§&§ = this.§&§;
         _loc2_.§ 7§ = param1;
         return _loc2_;
      }
      
      public function get §4e§() : String
      {
         return this.§&§;
      }
      
      public function set §4e§(param1:String) : void
      {
         this.§&§ = param1;
      }
   }
}
