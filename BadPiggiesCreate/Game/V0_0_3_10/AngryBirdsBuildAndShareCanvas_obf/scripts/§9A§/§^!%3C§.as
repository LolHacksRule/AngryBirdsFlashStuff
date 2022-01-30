package §9A§
{
   import §%t§.§-!5§;
   import §1U§.§"!V§;
   import §5!5§.§^e§;
   import §^I§.§5! §;
   import §^I§.Sprite;
   
   public class §^!<§
   {
      
      public static const §["2§:String = "CutScene_Type_Intro";
      
      public static const §2q§:String = "CutScene_Type_Outro";
      
      public static const §+!5§:String = "CutScene_Type_Final_Outro";
       
      
      private var §^o§:§-!5§;
      
      private var § +§:String;
      
      private var §;i§:Vector.<§'"$§>;
      
      private var §;k§:Number;
      
      private var §9j§:Number;
      
      private var §4!z§:Number;
      
      private var §@R§:Number;
      
      private var §;!E§:Sprite;
      
      private var §,P§:Boolean = true;
      
      private var §`@§:uint;
      
      private var §^R§:Boolean;
      
      private var §'A§:§5! §;
      
      private var §"8§:§5! §;
      
      public function §^!<§(param1:Object, param2:String)
      {
         var _loc3_:§'"$§ = null;
         var _loc4_:Object = null;
         this.§;i§ = new Vector.<§'"$§>();
         super();
         this.§;k§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§ +§ = §["2§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§ +§ = §2q§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§?k§(_loc4_);
               if(_loc3_)
               {
                  this.§;i§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§;i§)
            {
               if(_loc3_ is §2!m§)
               {
                  (_loc3_ as §2!m§).setSize(this.§4!z§,this.§@R§);
                  (_loc3_ as §2!m§).§3" § = this.§,P§;
               }
               else if(_loc3_ is §;w§)
               {
                  (_loc3_ as §;w§).setSize(this.§4!z§,this.§@R§);
                  (_loc3_ as §;w§).§ !z§ = this.§,P§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§;!E§;
      }
      
      private function §?k§(param1:Object) : §'"$§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §'"$§.§"!P§:
               return new §;w§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §'"$§.§^!A§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §2!m§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §'"$§.§`W§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §="&§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §'"$§.§66§:
               return new §""8§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §'"$§.END:
               this.§9j§ = param1.time * 1000;
               break;
            case §'"$§.§ !s§:
               this.§4!z§ = param1.width;
               this.§@R§ = param1.height;
               break;
            case §'"$§.§0!-§:
               this.§,P§ = false;
               break;
            case §'"$§.§[_§:
               this.§,P§ = true;
               break;
            case §'"$§.§#&§:
               this.§`@§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§;!E§)
         {
            this.§;!E§.dispose();
            this.§;!E§ = null;
         }
         this.§;i§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§;!E§)
         {
            this.§;!E§ = new Sprite();
         }
         this.§;k§ += param1;
         var _loc2_:int = this.§;i§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§;i§[_loc2_].update(this.§;k§,this.§;!E§,this.§^o§))
            {
               this.§;i§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§>k§();
         this.§7!v§();
         this.§9""§();
         return this.§;k§ < this.§9j§;
      }
      
      private function §9""§() : void
      {
         var _loc1_:int = §^e§.§-_§.§?%§.height;
         var _loc2_:Number = §"!V§.§4-§;
         var _loc3_:Number = §"!V§.§8!e§;
         var _loc4_:int = (_loc1_ - this.§@R§ * _loc2_) / _loc2_;
         this.§;!E§.y = _loc4_ >> 1;
      }
      
      private function §>k§() : void
      {
         §^e§.§-_§.color = this.§`@§;
      }
      
      private function §7!v§() : void
      {
         if(this.§^R§)
         {
            return;
         }
         var _loc1_:Sprite = this.§;!E§.getChildByName(§;w§.§^,§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§^R§ = true;
      }
      
      public function clone(param1:§-!5§) : §^!<§
      {
         var _loc3_:§'"$§ = null;
         var _loc2_:§^!<§ = new §^!<§(null,null);
         for each(_loc3_ in this.§;i§)
         {
            _loc2_.§;i§.push(_loc3_.clone());
         }
         _loc2_.§;k§ = this.§;k§;
         _loc2_.§9j§ = this.§9j§;
         _loc2_.§4!z§ = this.§4!z§;
         _loc2_.§@R§ = this.§@R§;
         _loc2_.§,P§ = this.§,P§;
         _loc2_.§`@§ = this.§`@§;
         _loc2_.§ +§ = this.§ +§;
         _loc2_.§^o§ = param1;
         return _loc2_;
      }
      
      public function get §<!o§() : String
      {
         return this.§ +§;
      }
      
      public function set §<!o§(param1:String) : void
      {
         this.§ +§ = param1;
      }
   }
}
