package §'r§
{
   import §"k§.§02§;
   import §-!§.§-§;
   import §1!§.§@!Q§;
   import §;!Q§.§,r§;
   import §;!Q§.Sprite;
   
   public class §<!"§
   {
      
      public static const §<p§:String = "CutScene_Type_Intro";
      
      public static const §1W§:String = "CutScene_Type_Outro";
      
      public static const §,^§:String = "CutScene_Type_Final_Outro";
       
      
      private var §^L§:§02§;
      
      private var §?u§:String;
      
      private var §2!R§:Vector.<§,!H§>;
      
      private var §5!&§:Number;
      
      private var §@!!§:Number;
      
      private var §<!&§:Number;
      
      private var §@!Y§:Number;
      
      private var §`K§:Sprite;
      
      private var §while§:Boolean = true;
      
      private var §6!5§:uint;
      
      private var §^!0§:Boolean;
      
      private var §@8§:§,r§;
      
      private var §2!%§:§,r§;
      
      public function §<!"§(param1:Object, param2:String)
      {
         var _loc3_:§,!H§ = null;
         var _loc4_:Object = null;
         this.§2!R§ = new Vector.<§,!H§>();
         super();
         this.§5!&§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§?u§ = §<p§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§?u§ = §1W§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§0!6§(_loc4_);
               if(_loc3_)
               {
                  this.§2!R§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§2!R§)
            {
               if(_loc3_ is §+L§)
               {
                  (_loc3_ as §+L§).§7q§(this.§<!&§,this.§@!Y§);
                  (_loc3_ as §+L§).§]q§ = this.§while§;
               }
               else if(_loc3_ is §%a§)
               {
                  (_loc3_ as §%a§).§7q§(this.§<!&§,this.§@!Y§);
                  (_loc3_ as §%a§).§@l§ = this.§while§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§`K§;
      }
      
      private function §0!6§(param1:Object) : §,!H§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §,!H§.§=!Q§:
               return new §%a§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §,!H§.§"!4§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §+L§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §,!H§.§>!"§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §&I§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §,!H§.§1!4§:
               return new §%p§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §,!H§.END:
               this.§@!!§ = param1.time * 1000;
               break;
            case §,!H§.§4!E§:
               this.§<!&§ = param1.width;
               this.§@!Y§ = param1.height;
               break;
            case §,!H§.§2!H§:
               this.§while§ = false;
               break;
            case §,!H§.§9w§:
               this.§while§ = true;
               break;
            case §,!H§.§ !X§:
               this.§6!5§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§`K§)
         {
            this.§`K§.dispose();
            this.§`K§ = null;
         }
         this.§2!R§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§`K§)
         {
            this.§`K§ = new Sprite();
         }
         this.§5!&§ += param1;
         var _loc2_:int = this.§2!R§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§2!R§[_loc2_].update(this.§5!&§,this.§`K§,this.§^L§))
            {
               this.§2!R§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§`m§();
         this.§>1§();
         this.§=!=§();
         return this.§5!&§ < this.§@!!§;
      }
      
      private function §=!=§() : void
      {
         var _loc1_:int = §-§.§-G§.§+!&§.height;
         var _loc2_:Number = §@!Q§.§'!§;
         var _loc3_:Number = §@!Q§.§2!M§;
         var _loc4_:int = (_loc1_ - this.§@!Y§ * _loc2_) / _loc2_;
         this.§`K§.y = _loc4_ >> 1;
      }
      
      private function §`m§() : void
      {
         §-§.§-G§.color = this.§6!5§;
      }
      
      private function §>1§() : void
      {
         if(this.§^!0§)
         {
            return;
         }
         var _loc1_:Sprite = this.§`K§.getChildByName(§%a§.§?K§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§^!0§ = true;
      }
      
      public function clone(param1:§02§) : §<!"§
      {
         var _loc3_:§,!H§ = null;
         var _loc2_:§<!"§ = new §<!"§(null,null);
         for each(_loc3_ in this.§2!R§)
         {
            _loc2_.§2!R§.push(_loc3_.clone());
         }
         _loc2_.§5!&§ = this.§5!&§;
         _loc2_.§@!!§ = this.§@!!§;
         _loc2_.§<!&§ = this.§<!&§;
         _loc2_.§@!Y§ = this.§@!Y§;
         _loc2_.§while§ = this.§while§;
         _loc2_.§6!5§ = this.§6!5§;
         _loc2_.§?u§ = this.§?u§;
         _loc2_.§^L§ = param1;
         return _loc2_;
      }
      
      public function get §8!_§() : String
      {
         return this.§?u§;
      }
      
      public function set §8!_§(param1:String) : void
      {
         this.§?u§ = param1;
      }
   }
}
