package §;$-§
{
   import §;#D§.§3#U§;
   import §?"e§.Starling;
   import §^"S§.§'#E§;
   import §^"S§.Sprite;
   import §`"8§.§34§;
   
   public class §^#;§
   {
      
      public static const §-#;§:String = "CutScene_Type_Intro";
      
      public static const §3"U§:String = "CutScene_Type_Outro";
      
      public static const §0!R§:String = "CutScene_Type_Final_Outro";
       
      
      private var §4Z§:§34§;
      
      private var §3"3§:String;
      
      private var §%#L§:Vector.<§<#N§>;
      
      private var §'"1§:Number;
      
      private var §9f§:Number;
      
      private var §4"V§:Number;
      
      private var §""&§:Number;
      
      private var §4"D§:Sprite;
      
      private var §'!5§:Boolean = true;
      
      private var §]"9§:uint;
      
      private var §"X§:Boolean;
      
      private var §4#v§:§'#E§;
      
      private var §-"g§:§'#E§;
      
      public function §^#;§(param1:Object, param2:String)
      {
         var _loc3_:§<#N§ = null;
         var _loc4_:Object = null;
         this.§%#L§ = new Vector.<§<#N§>();
         super();
         this.§'"1§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§3"3§ = §-#;§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§3"3§ = §3"U§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§,"d§(_loc4_);
               if(_loc3_)
               {
                  this.§%#L§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§%#L§)
            {
               if(_loc3_ is §0$<§)
               {
                  (_loc3_ as §0$<§).setSize(this.§4"V§,this.§""&§);
                  (_loc3_ as §0$<§).§@!j§ = this.§'!5§;
               }
               else if(_loc3_ is §=!^§)
               {
                  (_loc3_ as §=!^§).setSize(this.§4"V§,this.§""&§);
                  (_loc3_ as §=!^§).§6"U§ = this.§'!5§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§4"D§;
      }
      
      private function §,"d§(param1:Object) : §<#N§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §<#N§.§!!O§:
               return new §=!^§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §<#N§.§`#_§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §0$<§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §<#N§.§3"2§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §]$&§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §<#N§.§?!8§:
               return new §!!s§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §<#N§.§3"N§:
               this.§9f§ = param1.time * 1000;
               break;
            case §<#N§.§1P§:
               this.§4"V§ = param1.width;
               this.§""&§ = param1.height;
               break;
            case §<#N§.§1!,§:
               this.§'!5§ = false;
               break;
            case §<#N§.§`#1§:
               this.§'!5§ = true;
               break;
            case §<#N§.§`"S§:
               this.§]"9§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§4"D§)
         {
            this.§4"D§.dispose();
            this.§4"D§ = null;
         }
         this.§%#L§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§4"D§)
         {
            this.§4"D§ = new Sprite();
         }
         this.§'"1§ += param1;
         var _loc2_:int = this.§%#L§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§%#L§[_loc2_].update(this.§'"1§,this.§4"D§,this.§4Z§))
            {
               this.§%#L§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§]$2§();
         this.§^q§();
         this.§+k§();
         return this.§'"1§ < this.§9f§;
      }
      
      private function §+k§() : void
      {
         var _loc1_:int = Starling.§="$§.height;
         var _loc2_:int = Starling.§="$§.width;
         var _loc3_:Number = §3#U§.§<!K§;
         var _loc4_:Number = §3#U§.§>!p§;
         var _loc5_:int = (_loc1_ - this.§""&§ * _loc3_) / _loc3_;
         this.§4"D§.scaleX = this.§4"D§.scaleY = Math.max(0.5,Math.min(1,_loc3_ / _loc4_));
         this.§4"D§.y = _loc5_ >> 1;
      }
      
      private function §]$2§() : void
      {
         Starling.§@#K§.color = this.§]"9§;
      }
      
      private function §^q§() : void
      {
         if(this.§"X§)
         {
            return;
         }
         var _loc1_:Sprite = this.§4"D§.getChildByName(§=!^§.§;!l§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§"X§ = true;
      }
      
      public function clone(param1:§34§) : §^#;§
      {
         var _loc3_:§<#N§ = null;
         var _loc2_:§^#;§ = new §^#;§(null,null);
         for each(_loc3_ in this.§%#L§)
         {
            _loc2_.§%#L§.push(_loc3_.clone());
         }
         _loc2_.§'"1§ = this.§'"1§;
         _loc2_.§9f§ = this.§9f§;
         _loc2_.§4"V§ = this.§4"V§;
         _loc2_.§""&§ = this.§""&§;
         _loc2_.§'!5§ = this.§'!5§;
         _loc2_.§]"9§ = this.§]"9§;
         _loc2_.§3"3§ = this.§3"3§;
         _loc2_.§4Z§ = param1;
         return _loc2_;
      }
      
      public function get cutSceneType() : String
      {
         return this.§3"3§;
      }
      
      public function set cutSceneType(param1:String) : void
      {
         this.§3"3§ = param1;
      }
   }
}
