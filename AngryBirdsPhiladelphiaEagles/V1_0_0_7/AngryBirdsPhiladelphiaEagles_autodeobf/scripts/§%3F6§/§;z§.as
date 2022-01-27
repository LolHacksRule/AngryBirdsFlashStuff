package §?6§
{
   import §"^§.§9=§;
   import §+f§.§4!8§;
   import §4G§.§5T§;
   import §4G§.Sprite;
   import §>w§.;
   
   public class §;z§
   {
      
      public static const §%N§:String = "CutScene_Type_Intro";
      
      public static const §"A§:String = "CutScene_Type_Outro";
      
      public static const §]W§:String = "CutScene_Type_Final_Outro";
       
      
      private var §;?§:§4!8§;
      
      private var §1=§:String;
      
      private var §=x§:Vector.<§8+§>;
      
      private var §!p§:Number;
      
      private var §>k§:Number;
      
      private var §@k§:Number;
      
      private var §?&§:Number;
      
      private var §!!+§:Sprite;
      
      private var §1!,§:Boolean = true;
      
      private var §+^§:uint;
      
      private var §?1§:Boolean;
      
      private var §,$§:§5T§;
      
      private var §%!!§:§5T§;
      
      public function §;z§(param1:Object, param2:String)
      {
         var _loc3_:§8+§ = null;
         var _loc4_:Object = null;
         this.§=x§ = new Vector.<§8+§>();
         super();
         this.§!p§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§1=§ = §%N§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§1=§ = §"A§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§;k§(_loc4_);
               if(_loc3_)
               {
                  this.§=x§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§=x§)
            {
               if(_loc3_ is §@J§)
               {
                  (_loc3_ as §@J§).setSize(this.§@k§,this.§?&§);
                  (_loc3_ as §@J§).§5Y§ = this.§1!,§;
               }
               else if(_loc3_ is § !§)
               {
                  (_loc3_ as § !§).setSize(this.§@k§,this.§?&§);
                  (_loc3_ as § !§).§-I§ = this.§1!,§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§!!+§;
      }
      
      private function §;k§(param1:Object) : §8+§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §8+§.§>t§:
               return new § !§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §8+§.§'!D§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §@J§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §8+§.§=t§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §^! §(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §8+§.§,y§:
               return new §=!0§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §8+§.END:
               this.§>k§ = param1.time * 1000;
               break;
            case §8+§.§+0§:
               this.§@k§ = param1.width;
               this.§?&§ = param1.height;
               break;
            case §8+§.§4o§:
               this.§1!,§ = false;
               break;
            case §8+§.§&!P§:
               this.§1!,§ = true;
               break;
            case §8+§.§`!1§:
               this.§+^§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§!!+§)
         {
            this.§!!+§.dispose();
            this.§!!+§ = null;
         }
         this.§=x§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§!!+§)
         {
            this.§!!+§ = new Sprite();
         }
         this.§!p§ += param1;
         var _loc2_:int = this.§=x§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§=x§[_loc2_].update(this.§!p§,this.§!!+§,this.§;?§))
            {
               this.§=x§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§%9§();
         this.§8X§();
         this.§^9§();
         return this.§!p§ < this.§>k§;
      }
      
      private function §^9§() : void
      {
         var _loc1_:int = §#0§.§#4§.§7!$§.height;
         var _loc2_:Number = §9=§.§'j§;
         var _loc3_:Number = §9=§.§-m§;
         var _loc4_:int = (_loc1_ - this.§?&§ * _loc2_) / _loc2_;
         this.§!!+§.y = _loc4_ >> 1;
      }
      
      private function §%9§() : void
      {
         §#0§.§#4§.color = this.§+^§;
      }
      
      private function §8X§() : void
      {
         if(this.§?1§)
         {
            return;
         }
         var _loc1_:Sprite = this.§!!+§.getChildByName(§ !§.§'#§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§?1§ = true;
      }
      
      public function clone(param1:§4!8§) : §;z§
      {
         var _loc3_:§8+§ = null;
         var _loc2_:§;z§ = new §;z§(null,null);
         for each(_loc3_ in this.§=x§)
         {
            _loc2_.§=x§.push(_loc3_.clone());
         }
         _loc2_.§!p§ = this.§!p§;
         _loc2_.§>k§ = this.§>k§;
         _loc2_.§@k§ = this.§@k§;
         _loc2_.§?&§ = this.§?&§;
         _loc2_.§1!,§ = this.§1!,§;
         _loc2_.§+^§ = this.§+^§;
         _loc2_.§1=§ = this.§1=§;
         _loc2_.§;?§ = param1;
         return _loc2_;
      }
      
      public function get §2Q§() : String
      {
         return this.§1=§;
      }
      
      public function set §2Q§(param1:String) : void
      {
         this.§1=§ = param1;
      }
   }
}
