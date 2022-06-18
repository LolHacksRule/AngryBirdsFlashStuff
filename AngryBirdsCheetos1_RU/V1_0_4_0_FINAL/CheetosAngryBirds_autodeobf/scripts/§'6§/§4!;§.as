package §'6§
{
   import §3§.§2?§;
   import §3§.Sprite;
   import §94§.§&!7§;
   import §^Q§.§,^§;
   import §`n§.§#H§;
   
   public class §4!;§
   {
      
      public static const §`!W§:String = "CutScene_Type_Intro";
      
      public static const §>'§:String = "CutScene_Type_Outro";
      
      public static const §3R§:String = "CutScene_Type_Final_Outro";
       
      
      private var §4=§:§#H§;
      
      private var §%!C§:String;
      
      private var §3!J§:Vector.<§+v§>;
      
      private var §4!§:Number;
      
      private var §&!#§:Number;
      
      private var §=!T§:Number;
      
      private var §&n§:Number;
      
      private var §;!5§:Sprite;
      
      private var §,>§:Boolean = true;
      
      private var §"f§:uint;
      
      private var §,<§:Boolean;
      
      private var §5!+§:§2?§;
      
      private var §"G§:§2?§;
      
      public function §4!;§(param1:Object, param2:String)
      {
         var _loc3_:§+v§ = null;
         var _loc4_:Object = null;
         this.§3!J§ = new Vector.<§+v§>();
         super();
         this.§4!§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§%!C§ = §`!W§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§%!C§ = §>'§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§;!D§(_loc4_);
               if(_loc3_)
               {
                  this.§3!J§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§3!J§)
            {
               if(_loc3_ is §#k§)
               {
                  (_loc3_ as §#k§).§ d§(this.§=!T§,this.§&n§);
                  (_loc3_ as §#k§).§,J§ = this.§,>§;
               }
               else if(_loc3_ is §!!H§)
               {
                  (_loc3_ as §!!H§).§ d§(this.§=!T§,this.§&n§);
                  (_loc3_ as §!!H§).§>g§ = this.§,>§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§;!5§;
      }
      
      private function §;!D§(param1:Object) : §+v§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §+v§.§,E§:
               return new §!!H§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §+v§.§?!H§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §#k§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §+v§.§[L§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §9!#§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §+v§.§^!C§:
               return new §]o§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §+v§.END:
               this.§&!#§ = param1.time * 1000;
               break;
            case §+v§.§'!T§:
               this.§=!T§ = param1.width;
               this.§&n§ = param1.height;
               break;
            case §+v§.§^m§:
               this.§,>§ = false;
               break;
            case §+v§.§<!%§:
               this.§,>§ = true;
               break;
            case §+v§.§0P§:
               this.§"f§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§;!5§)
         {
            this.§;!5§.dispose();
            this.§;!5§ = null;
         }
         this.§3!J§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§;!5§)
         {
            this.§;!5§ = new Sprite();
         }
         this.§4!§ += param1;
         var _loc2_:int = this.§3!J§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§3!J§[_loc2_].update(this.§4!§,this.§;!5§,this.§4=§))
            {
               this.§3!J§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§7!C§();
         this.§`o§();
         this.§^$§();
         return this.§4!§ < this.§&!#§;
      }
      
      private function §^$§() : void
      {
         var _loc1_:int = §&!7§.§>!M§.§!O§.height;
         var _loc2_:Number = §,^§.§^!a§;
         var _loc3_:Number = §,^§.§=%§;
         var _loc4_:int = (_loc1_ - this.§&n§ * _loc2_) / _loc2_;
         this.§;!5§.y = _loc4_ >> 1;
      }
      
      private function §7!C§() : void
      {
         §&!7§.§>!M§.color = this.§"f§;
      }
      
      private function §`o§() : void
      {
         if(this.§,<§)
         {
            return;
         }
         var _loc1_:Sprite = this.§;!5§.getChildByName(§!!H§.§2!0§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§,<§ = true;
      }
      
      public function clone(param1:§#H§) : §4!;§
      {
         var _loc3_:§+v§ = null;
         var _loc2_:§4!;§ = new §4!;§(null,null);
         for each(_loc3_ in this.§3!J§)
         {
            _loc2_.§3!J§.push(_loc3_.clone());
         }
         _loc2_.§4!§ = this.§4!§;
         _loc2_.§&!#§ = this.§&!#§;
         _loc2_.§=!T§ = this.§=!T§;
         _loc2_.§&n§ = this.§&n§;
         _loc2_.§,>§ = this.§,>§;
         _loc2_.§"f§ = this.§"f§;
         _loc2_.§%!C§ = this.§%!C§;
         _loc2_.§4=§ = param1;
         return _loc2_;
      }
      
      public function get §<p§() : String
      {
         return this.§%!C§;
      }
      
      public function set §<p§(param1:String) : void
      {
         this.§%!C§ = param1;
      }
   }
}
