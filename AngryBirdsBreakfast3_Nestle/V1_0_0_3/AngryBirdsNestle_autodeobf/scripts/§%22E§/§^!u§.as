package §"E§
{
   import §0!Y§.§-f§;
   import §0!Y§.Sprite;
   import §5!W§.§>P§;
   import §6!?§.§`!O§;
   import com.angrybirds.§4!l§;
   
   public class §^!u§
   {
      
      public static const §6!0§:String = "CutScene_Type_Intro";
      
      public static const §2!^§:String = "CutScene_Type_Outro";
      
      public static const §80§:String = "CutScene_Type_Final_Outro";
       
      
      private var §#=§:§`!O§;
      
      private var §7B§:String;
      
      private var §?"0§:Vector.<§%!N§>;
      
      private var §1!C§:Number;
      
      private var §'m§:Number;
      
      private var §?!<§:Number;
      
      private var §1+§:Number;
      
      private var §<q§:Sprite;
      
      private var §8!f§:Boolean = true;
      
      private var §8G§:uint;
      
      private var §6s§:Boolean;
      
      private var §]o§:§-f§;
      
      private var §!!J§:§-f§;
      
      public function §^!u§(param1:Object, param2:String)
      {
         var _loc3_:§%!N§ = null;
         var _loc4_:Object = null;
         this.§?"0§ = new Vector.<§%!N§>();
         super();
         this.§1!C§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§7B§ = §6!0§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§7B§ = §2!^§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§ "+§(_loc4_);
               if(_loc3_)
               {
                  this.§?"0§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§?"0§)
            {
               if(_loc3_ is §^!=§)
               {
                  (_loc3_ as §^!=§).setSize(this.§?!<§,this.§1+§);
                  (_loc3_ as §^!=§).horizontal = this.§8!f§;
               }
               else if(_loc3_ is §!b§)
               {
                  (_loc3_ as §!b§).setSize(this.§?!<§,this.§1+§);
                  (_loc3_ as §!b§).§@!Q§ = this.§8!f§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§<q§;
      }
      
      private function § "+§(param1:Object) : §%!N§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §%!N§.§&V§:
               return new §!b§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §%!N§.SCROLL:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §^!=§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §%!N§.§@!q§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §9"0§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §%!N§.§7!1§:
               return new §1d§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §%!N§.END:
               this.§'m§ = param1.time * 1000;
               break;
            case §%!N§.§ ?§:
               this.§?!<§ = param1.width;
               this.§1+§ = param1.height;
               break;
            case §%!N§.§ s§:
               this.§8!f§ = false;
               break;
            case §%!N§.§,_§:
               this.§8!f§ = true;
               break;
            case §%!N§.§'!j§:
               this.§8G§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§<q§)
         {
            this.§<q§.dispose();
            this.§<q§ = null;
         }
         this.§?"0§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§<q§)
         {
            this.§<q§ = new Sprite();
         }
         this.§1!C§ += param1;
         var _loc2_:int = this.§?"0§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§?"0§[_loc2_].update(this.§1!C§,this.§<q§,this.§#=§))
            {
               this.§?"0§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§,"-§();
         this.§%!u§();
         this.§>?§();
         return this.§1!C§ < this.§'m§;
      }
      
      private function §>?§() : void
      {
         var _loc1_:int = §>P§.§5R§.height;
         var _loc2_:Number = §4!l§.§[j§;
         var _loc3_:Number = §4!l§.§@!9§;
         var _loc4_:int = (_loc1_ - this.§1+§ * _loc2_) / _loc2_;
         this.§<q§.y = _loc4_ >> 1;
      }
      
      private function §,"-§() : void
      {
         §>P§.§;_§.color = this.§8G§;
      }
      
      private function §%!u§() : void
      {
         if(this.§6s§)
         {
            return;
         }
         var _loc1_:Sprite = this.§<q§.getChildByName(§!b§.§'!]§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§6s§ = true;
      }
      
      public function clone(param1:§`!O§) : §^!u§
      {
         var _loc3_:§%!N§ = null;
         var _loc2_:§^!u§ = new §^!u§(null,null);
         for each(_loc3_ in this.§?"0§)
         {
            _loc2_.§?"0§.push(_loc3_.clone());
         }
         _loc2_.§1!C§ = this.§1!C§;
         _loc2_.§'m§ = this.§'m§;
         _loc2_.§?!<§ = this.§?!<§;
         _loc2_.§1+§ = this.§1+§;
         _loc2_.§8!f§ = this.§8!f§;
         _loc2_.§8G§ = this.§8G§;
         _loc2_.§7B§ = this.§7B§;
         _loc2_.§#=§ = param1;
         return _loc2_;
      }
      
      public function get §>v§() : String
      {
         return this.§7B§;
      }
      
      public function set §>v§(param1:String) : void
      {
         this.§7B§ = param1;
      }
   }
}
