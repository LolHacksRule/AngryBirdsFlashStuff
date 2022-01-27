package § a§
{
   import §%O§.§ !§;
   import §<!-§.§8J§;
   import §<!-§.Sprite;
   import §?!5§.§2d§;
   import §?!P§.§@@§;
   
   public class §0]§
   {
      
      public static const §2!`§:String = "CutScene_Type_Intro";
      
      public static const §^!+§:String = "CutScene_Type_Outro";
      
      public static const §"`§:String = "CutScene_Type_Final_Outro";
       
      
      private var §^4§:§ !§;
      
      private var §%T§:String;
      
      private var §>!C§:Vector.<§&K§>;
      
      private var §-9§:Number;
      
      private var §=S§:Number;
      
      private var §]2§:Number;
      
      private var §?R§:Number;
      
      private var §0b§:Sprite;
      
      private var §3[§:Boolean = true;
      
      private var §2"§:uint;
      
      private var §+!K§:Boolean;
      
      private var §-g§:§8J§;
      
      private var §0H§:§8J§;
      
      public function §0]§(param1:Object, param2:String)
      {
         var _loc3_:§&K§ = null;
         var _loc4_:Object = null;
         this.§>!C§ = new Vector.<§&K§>();
         super();
         this.§-9§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§%T§ = §2!`§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§%T§ = §^!+§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§@!K§(_loc4_);
               if(_loc3_)
               {
                  this.§>!C§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§>!C§)
            {
               if(_loc3_ is §`a§)
               {
                  (_loc3_ as §`a§).§&Q§(this.§]2§,this.§?R§);
                  (_loc3_ as §`a§).§do § = this.§3[§;
               }
               else if(_loc3_ is §"C§)
               {
                  (_loc3_ as §"C§).§&Q§(this.§]2§,this.§?R§);
                  (_loc3_ as §"C§).§8>§ = this.§3[§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§0b§;
      }
      
      private function §@!K§(param1:Object) : §&K§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §&K§.§?F§:
               return new §"C§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §&K§.§5-§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §`a§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §&K§.§ !;§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §?c§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §&K§.§6q§:
               return new §=^§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §&K§.END:
               this.§=S§ = param1.time * 1000;
               break;
            case §&K§.§]!E§:
               this.§]2§ = param1.width;
               this.§?R§ = param1.height;
               break;
            case §&K§.§2j§:
               this.§3[§ = false;
               break;
            case §&K§.§9W§:
               this.§3[§ = true;
               break;
            case §&K§.§4h§:
               this.§2"§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§0b§)
         {
            this.§0b§.dispose();
            this.§0b§ = null;
         }
         this.§>!C§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§0b§)
         {
            this.§0b§ = new Sprite();
         }
         this.§-9§ += param1;
         var _loc2_:int = this.§>!C§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§>!C§[_loc2_].update(this.§-9§,this.§0b§,this.§^4§))
            {
               this.§>!C§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§,H§();
         this.§-i§();
         this.§=V§();
         return this.§-9§ < this.§=S§;
      }
      
      private function §=V§() : void
      {
         var _loc1_:int = §2d§.§0A§.§?!>§.height;
         var _loc2_:Number = §@@§.§0!D§;
         var _loc3_:Number = §@@§.§@H§;
         var _loc4_:int = (_loc1_ - this.§?R§ * _loc2_) / _loc2_;
         this.§0b§.y = _loc4_ >> 1;
      }
      
      private function §,H§() : void
      {
         §2d§.§0A§.color = this.§2"§;
      }
      
      private function §-i§() : void
      {
         if(this.§+!K§)
         {
            return;
         }
         var _loc1_:Sprite = this.§0b§.getChildByName(§"C§.§&!A§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§+!K§ = true;
      }
      
      public function clone(param1:§ !§) : §0]§
      {
         var _loc3_:§&K§ = null;
         var _loc2_:§0]§ = new §0]§(null,null);
         for each(_loc3_ in this.§>!C§)
         {
            _loc2_.§>!C§.push(_loc3_.clone());
         }
         _loc2_.§-9§ = this.§-9§;
         _loc2_.§=S§ = this.§=S§;
         _loc2_.§]2§ = this.§]2§;
         _loc2_.§?R§ = this.§?R§;
         _loc2_.§3[§ = this.§3[§;
         _loc2_.§2"§ = this.§2"§;
         _loc2_.§%T§ = this.§%T§;
         _loc2_.§^4§ = param1;
         return _loc2_;
      }
      
      public function get §#!P§() : String
      {
         return this.§%T§;
      }
      
      public function set §#!P§(param1:String) : void
      {
         this.§%T§ = param1;
      }
   }
}
