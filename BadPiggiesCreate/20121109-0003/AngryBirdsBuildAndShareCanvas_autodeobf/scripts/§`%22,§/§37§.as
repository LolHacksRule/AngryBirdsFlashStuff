package §`",§
{
   import §%!j§.§%K§;
   import §+!-§.§4!O§;
   import §+!-§.Sprite;
   import §,P§.§'_§;
   import §;"7§.§="<§;
   
   public class §37§
   {
      
      public static const §8k§:String = "CutScene_Type_Intro";
      
      public static const § !#§:String = "CutScene_Type_Outro";
      
      public static const §"!a§:String = "CutScene_Type_Final_Outro";
       
      
      private var §7k§:§="<§;
      
      private var §^h§:String;
      
      private var §7x§:Vector.<§7!s§>;
      
      private var §9R§:Number;
      
      private var §;"4§:Number;
      
      private var §",§:Number;
      
      private var §%"0§:Number;
      
      private var § D§:Sprite;
      
      private var §^"+§:Boolean = true;
      
      private var §%!u§:uint;
      
      private var §@O§:Boolean;
      
      private var §[8§:§4!O§;
      
      private var §>!_§:§4!O§;
      
      public function §37§(param1:Object, param2:String)
      {
         var _loc3_:§7!s§ = null;
         var _loc4_:Object = null;
         this.§7x§ = new Vector.<§7!s§>();
         super();
         this.§9R§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§^h§ = §8k§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§^h§ = § !#§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§,!`§(_loc4_);
               if(_loc3_)
               {
                  this.§7x§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§7x§)
            {
               if(_loc3_ is §8y§)
               {
                  (_loc3_ as §8y§).setSize(this.§",§,this.§%"0§);
                  (_loc3_ as §8y§).§1V§ = this.§^"+§;
               }
               else if(_loc3_ is §%!!§)
               {
                  (_loc3_ as §%!!§).setSize(this.§",§,this.§%"0§);
                  (_loc3_ as §%!!§).§use § = this.§^"+§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§ D§;
      }
      
      private function §,!`§(param1:Object) : §7!s§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §7!s§.§"B§:
               return new §%!!§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §7!s§.§+";§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §8y§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §7!s§.§5@§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §+0§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §7!s§.§4!S§:
               return new §7=§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §7!s§.END:
               this.§;"4§ = param1.time * 1000;
               break;
            case §7!s§.§>=§:
               this.§",§ = param1.width;
               this.§%"0§ = param1.height;
               break;
            case §7!s§.§`"7§:
               this.§^"+§ = false;
               break;
            case §7!s§.§<a§:
               this.§^"+§ = true;
               break;
            case §7!s§.§=$§:
               this.§%!u§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§ D§)
         {
            this.§ D§.dispose();
            this.§ D§ = null;
         }
         this.§7x§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§ D§)
         {
            this.§ D§ = new Sprite();
         }
         this.§9R§ += param1;
         var _loc2_:int = this.§7x§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§7x§[_loc2_].update(this.§9R§,this.§ D§,this.§7k§))
            {
               this.§7x§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§1c§();
         this.§+]§();
         this.§11§();
         return this.§9R§ < this.§;"4§;
      }
      
      private function §11§() : void
      {
         var _loc1_:int = §%K§.§`9§.§<!J§.height;
         var _loc2_:Number = §'_§.§=!c§;
         var _loc3_:Number = §'_§.§<e§;
         var _loc4_:int = (_loc1_ - this.§%"0§ * _loc2_) / _loc2_;
         this.§ D§.y = _loc4_ >> 1;
      }
      
      private function §1c§() : void
      {
         §%K§.§`9§.color = this.§%!u§;
      }
      
      private function §+]§() : void
      {
         if(this.§@O§)
         {
            return;
         }
         var _loc1_:Sprite = this.§ D§.getChildByName(§%!!§.§=[§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§@O§ = true;
      }
      
      public function clone(param1:§="<§) : §37§
      {
         var _loc3_:§7!s§ = null;
         var _loc2_:§37§ = new §37§(null,null);
         for each(_loc3_ in this.§7x§)
         {
            _loc2_.§7x§.push(_loc3_.clone());
         }
         _loc2_.§9R§ = this.§9R§;
         _loc2_.§;"4§ = this.§;"4§;
         _loc2_.§",§ = this.§",§;
         _loc2_.§%"0§ = this.§%"0§;
         _loc2_.§^"+§ = this.§^"+§;
         _loc2_.§%!u§ = this.§%!u§;
         _loc2_.§^h§ = this.§^h§;
         _loc2_.§7k§ = param1;
         return _loc2_;
      }
      
      public function get §6! §() : String
      {
         return this.§^h§;
      }
      
      public function set §6! §(param1:String) : void
      {
         this.§^h§ = param1;
      }
   }
}
