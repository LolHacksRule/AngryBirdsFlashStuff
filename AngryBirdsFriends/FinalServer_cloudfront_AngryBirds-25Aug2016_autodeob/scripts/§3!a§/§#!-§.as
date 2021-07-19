package §3!a§
{
   import §9$§.Sprite;
   import §9$§.§],§;
   import §?§.§>"$§;
   import §@"§.§&!=§;
   import §^a§.Starling;
   
   public class §#!-§
   {
      
      public static const §#",§:String = "CutScene_Type_Intro";
      
      public static const §^""§:String = "CutScene_Type_Outro";
      
      public static const §,#V§:String = "CutScene_Type_Final_Outro";
       
      
      private var §5!H§:§&!=§;
      
      private var §&"C§:String;
      
      private var §%"P§:Vector.<§`#K§>;
      
      private var §-_§:Number;
      
      private var §,!n§:Number;
      
      private var §]<§:Number;
      
      private var §""b§:Number;
      
      private var §]Y§:Sprite;
      
      private var §7"y§:Boolean = true;
      
      private var §1!b§:uint;
      
      private var §;#0§:Boolean;
      
      private var §&G§:§],§;
      
      private var § $%§:§],§;
      
      public function §#!-§(param1:Object, param2:String)
      {
         var _loc3_:§`#K§ = null;
         var _loc4_:Object = null;
         this.§%"P§ = new Vector.<§`#K§>();
         super();
         this.§-_§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§&"C§ = §#",§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§&"C§ = §^""§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§&!"§(_loc4_);
               if(_loc3_)
               {
                  this.§%"P§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§%"P§)
            {
               if(_loc3_ is §16§)
               {
                  (_loc3_ as §16§).setSize(this.§]<§,this.§""b§);
                  (_loc3_ as §16§).§-"P§ = this.§7"y§;
               }
               else if(_loc3_ is §;"9§)
               {
                  (_loc3_ as §;"9§).setSize(this.§]<§,this.§""b§);
                  (_loc3_ as §;"9§).§&A§ = this.§7"y§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§]Y§;
      }
      
      private function §&!"§(param1:Object) : §`#K§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §`#K§.§!R§:
               return new §;"9§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §`#K§.§ "z§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §16§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §`#K§.§^-§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §=!0§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §`#K§.§]!E§:
               this.§,!n§ = param1.time * 1000;
               break;
            case §`#K§.§3#o§:
               this.§]<§ = param1.width;
               this.§""b§ = param1.height;
               break;
            case §`#K§.§<"@§:
               this.§7"y§ = false;
               break;
            case §`#K§.§<"R§:
               this.§7"y§ = true;
               break;
            case §`#K§.§%"N§:
               this.§1!b§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
               break;
            default:
               break;
            case §`#K§.§@"?§:
               return new §9!&§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§]Y§)
         {
            this.§]Y§.dispose();
            this.§]Y§ = null;
         }
         this.§%"P§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§]Y§)
         {
            this.§]Y§ = new Sprite();
         }
         this.§-_§ += param1;
         var _loc2_:int = this.§%"P§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§%"P§[_loc2_].update(this.§-_§,this.§]Y§,this.§5!H§))
            {
               this.§%"P§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§]P§();
         this.§ "]§();
         this.§2h§();
         return this.§-_§ < this.§,!n§;
      }
      
      private function §2h§() : void
      {
         var _loc1_:int = Starling.§1$9§.height;
         int(Starling.§1$9§.width);
         var _loc3_:Number = §>"$§.§;!m§;
         var _loc4_:Number = §>"$§.§`G§;
         var _loc5_:int = (_loc1_ - this.§""b§ * _loc3_) / _loc3_;
         this.§]Y§.scaleX = this.§]Y§.scaleY = Math.max(0.5,Math.min(1,_loc3_ / _loc4_));
         this.§]Y§.y = _loc5_ >> 1;
      }
      
      private function §]P§() : void
      {
         Starling.§<#`§.color = this.§1!b§;
      }
      
      private function § "]§() : void
      {
         if(this.§;#0§)
         {
            return;
         }
         var _loc1_:Sprite = this.§]Y§.getChildByName(§;"9§.§4#i§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§;#0§ = true;
      }
      
      public function clone(param1:§&!=§) : §#!-§
      {
         var _loc3_:§`#K§ = null;
         var _loc2_:§#!-§ = new §#!-§(null,null);
         for each(_loc3_ in this.§%"P§)
         {
            _loc2_.§%"P§.push(_loc3_.clone());
         }
         _loc2_.§-_§ = this.§-_§;
         _loc2_.§,!n§ = this.§,!n§;
         _loc2_.§]<§ = this.§]<§;
         _loc2_.§""b§ = this.§""b§;
         _loc2_.§7"y§ = this.§7"y§;
         _loc2_.§1!b§ = this.§1!b§;
         _loc2_.§&"C§ = this.§&"C§;
         _loc2_.§5!H§ = param1;
         return _loc2_;
      }
      
      public function get cutSceneType() : String
      {
         return this.§&"C§;
      }
      
      public function set cutSceneType(param1:String) : void
      {
         this.§&"C§ = param1;
      }
   }
}
