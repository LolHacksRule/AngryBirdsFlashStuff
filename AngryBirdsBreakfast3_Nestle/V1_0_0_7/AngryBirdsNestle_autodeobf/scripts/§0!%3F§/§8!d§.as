package §0!?§
{
   import § !=§.Sprite;
   import § !=§.§break§;
   import §;L§.§"!X§;
   import §`V§.§;6§;
   import com.angrybirds.§#Z§;
   
   public class §8!d§
   {
      
      public static const §1!'§:String = "CutScene_Type_Intro";
      
      public static const § !t§:String = "CutScene_Type_Outro";
      
      public static const §&"4§:String = "CutScene_Type_Final_Outro";
       
      
      private var §'!2§:§"!X§;
      
      private var §9!M§:String;
      
      private var §=!Y§:Vector.<§&!G§>;
      
      private var §#"'§:Number;
      
      private var §&!-§:Number;
      
      private var §`!p§:Number;
      
      private var §<c§:Number;
      
      private var §%!D§:Sprite;
      
      private var §9O§:Boolean = true;
      
      private var §?x§:uint;
      
      private var §"!?§:Boolean;
      
      private var §@!T§:§break§;
      
      private var §[_§:§break§;
      
      public function §8!d§(param1:Object, param2:String)
      {
         var _loc3_:§&!G§ = null;
         var _loc4_:Object = null;
         this.§=!Y§ = new Vector.<§&!G§>();
         super();
         this.§#"'§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§9!M§ = §1!'§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§9!M§ = § !t§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§?=§(_loc4_);
               if(_loc3_)
               {
                  this.§=!Y§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§=!Y§)
            {
               if(_loc3_ is §;9§)
               {
                  (_loc3_ as §;9§).setSize(this.§`!p§,this.§<c§);
                  (_loc3_ as §;9§).horizontal = this.§9O§;
               }
               else if(_loc3_ is §0!C§)
               {
                  (_loc3_ as §0!C§).setSize(this.§`!p§,this.§<c§);
                  (_loc3_ as §0!C§).§;N§ = this.§9O§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§%!D§;
      }
      
      private function §?=§(param1:Object) : §&!G§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §&!G§.§1!-§:
               return new §0!C§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §&!G§.SCROLL:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §;9§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §&!G§.§"r§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §>!`§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §&!G§.§'y§:
               return new §"!y§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §&!G§.END:
               this.§&!-§ = param1.time * 1000;
               break;
            case §&!G§.§`!j§:
               this.§`!p§ = param1.width;
               this.§<c§ = param1.height;
               break;
            case §&!G§.§?!3§:
               this.§9O§ = false;
               break;
            case §&!G§.§ !K§:
               this.§9O§ = true;
               break;
            case §&!G§.§?!7§:
               this.§?x§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§%!D§)
         {
            this.§%!D§.dispose();
            this.§%!D§ = null;
         }
         this.§=!Y§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§%!D§)
         {
            this.§%!D§ = new Sprite();
         }
         this.§#"'§ += param1;
         var _loc2_:int = this.§=!Y§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§=!Y§[_loc2_].update(this.§#"'§,this.§%!D§,this.§'!2§))
            {
               this.§=!Y§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§6!-§();
         this.§0U§();
         this.§"R§();
         return this.§#"'§ < this.§&!-§;
      }
      
      private function §"R§() : void
      {
         var _loc1_:int = §;6§.§8!"§.height;
         var _loc2_:Number = §#Z§.§&"3§;
         var _loc3_:Number = §#Z§.§]w§;
         var _loc4_:int = (_loc1_ - this.§<c§ * _loc2_) / _loc2_;
         this.§%!D§.y = _loc4_ >> 1;
      }
      
      private function §6!-§() : void
      {
         §;6§.§@X§.color = this.§?x§;
      }
      
      private function §0U§() : void
      {
         if(this.§"!?§)
         {
            return;
         }
         var _loc1_:Sprite = this.§%!D§.getChildByName(§0!C§.§2I§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§"!?§ = true;
      }
      
      public function clone(param1:§"!X§) : §8!d§
      {
         var _loc3_:§&!G§ = null;
         var _loc2_:§8!d§ = new §8!d§(null,null);
         for each(_loc3_ in this.§=!Y§)
         {
            _loc2_.§=!Y§.push(_loc3_.clone());
         }
         _loc2_.§#"'§ = this.§#"'§;
         _loc2_.§&!-§ = this.§&!-§;
         _loc2_.§`!p§ = this.§`!p§;
         _loc2_.§<c§ = this.§<c§;
         _loc2_.§9O§ = this.§9O§;
         _loc2_.§?x§ = this.§?x§;
         _loc2_.§9!M§ = this.§9!M§;
         _loc2_.§'!2§ = param1;
         return _loc2_;
      }
      
      public function get §]!i§() : String
      {
         return this.§9!M§;
      }
      
      public function set §]!i§(param1:String) : void
      {
         this.§9!M§ = param1;
      }
   }
}
