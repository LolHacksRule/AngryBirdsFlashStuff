package §#R§
{
   import §&b§.§[F§;
   import §4!0§.§3§;
   import §86§.§=u§;
   import §86§.Sprite;
   import §@g§.§4!@§;
   
   public class §?x§
   {
      
      public static const §9b§:String = "CutScene_Type_Intro";
      
      public static const §[!8§:String = "CutScene_Type_Outro";
      
      public static const §9!4§:String = "CutScene_Type_Final_Outro";
       
      
      private var §"P§:§3§;
      
      private var §]h§:String;
      
      private var §`=§:Vector.<§@i§>;
      
      private var §%i§:Number;
      
      private var § !4§:Number;
      
      private var §]!E§:Number;
      
      private var §+?§:Number;
      
      private var §+!N§:Sprite;
      
      private var §!!-§:Boolean = true;
      
      private var §>E§:uint;
      
      private var §>k§:Boolean;
      
      private var §>G§:§=u§;
      
      private var §%A§:§=u§;
      
      public function §?x§(param1:Object, param2:String)
      {
         var _loc3_:§@i§ = null;
         var _loc4_:Object = null;
         this.§`=§ = new Vector.<§@i§>();
         super();
         this.§%i§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§]h§ = §9b§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§]h§ = §[!8§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§6`§(_loc4_);
               if(_loc3_)
               {
                  this.§`=§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§`=§)
            {
               if(_loc3_ is §3,§)
               {
                  (_loc3_ as §3,§).setSize(this.§]!E§,this.§+?§);
                  (_loc3_ as §3,§).§^!M§ = this.§!!-§;
               }
               else if(_loc3_ is §&@§)
               {
                  (_loc3_ as §&@§).setSize(this.§]!E§,this.§+?§);
                  (_loc3_ as §&@§).§!W§ = this.§!!-§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§+!N§;
      }
      
      private function §6`§(param1:Object) : §@i§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §@i§.§##§:
               return new §&@§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §@i§.§]c§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §3,§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §@i§.§[]§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §%C§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §@i§.§,! §:
               return new §>3§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §@i§.END:
               this.§ !4§ = param1.time * 1000;
               break;
            case §@i§.§^O§:
               this.§]!E§ = param1.width;
               this.§+?§ = param1.height;
               break;
            case §@i§.§;D§:
               this.§!!-§ = false;
               break;
            case §@i§.§'-§:
               this.§!!-§ = true;
               break;
            case §@i§.§#T§:
               this.§>E§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§+!N§)
         {
            this.§+!N§.dispose();
            this.§+!N§ = null;
         }
         this.§`=§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§+!N§)
         {
            this.§+!N§ = new Sprite();
         }
         this.§%i§ += param1;
         var _loc2_:int = this.§`=§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§`=§[_loc2_].update(this.§%i§,this.§+!N§,this.§"P§))
            {
               this.§`=§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§^p§();
         this.§[6§();
         this.§8I§();
         return this.§%i§ < this.§ !4§;
      }
      
      private function §8I§() : void
      {
         var _loc1_:int = §4!@§.§ C§.§9_§.height;
         var _loc2_:Number = §[F§.§9h§;
         var _loc3_:Number = §[F§.§9!M§;
         var _loc4_:int = (_loc1_ - this.§+?§ * _loc2_) / _loc2_;
         this.§+!N§.y = _loc4_ >> 1;
      }
      
      private function §^p§() : void
      {
         §4!@§.§ C§.color = this.§>E§;
      }
      
      private function §[6§() : void
      {
         if(this.§>k§)
         {
            return;
         }
         var _loc1_:Sprite = this.§+!N§.getChildByName(§&@§.§@!6§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§>k§ = true;
      }
      
      public function clone(param1:§3§) : §?x§
      {
         var _loc3_:§@i§ = null;
         var _loc2_:§?x§ = new §?x§(null,null);
         for each(_loc3_ in this.§`=§)
         {
            _loc2_.§`=§.push(_loc3_.clone());
         }
         _loc2_.§%i§ = this.§%i§;
         _loc2_.§ !4§ = this.§ !4§;
         _loc2_.§]!E§ = this.§]!E§;
         _loc2_.§+?§ = this.§+?§;
         _loc2_.§!!-§ = this.§!!-§;
         _loc2_.§>E§ = this.§>E§;
         _loc2_.§]h§ = this.§]h§;
         _loc2_.§"P§ = param1;
         return _loc2_;
      }
      
      public function get §95§() : String
      {
         return this.§]h§;
      }
      
      public function set §95§(param1:String) : void
      {
         this.§]h§ = param1;
      }
   }
}
