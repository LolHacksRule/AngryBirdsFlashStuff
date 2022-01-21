package §[>§
{
   import § !%§.§7!>§;
   import § !Y§.§2#§;
   import § %§.§`M§;
   import §&c§.§2!]§;
   import §&c§.Sprite;
   
   public class §[!o§
   {
      
      public static const §#_§:String = "CutScene_Type_Intro";
      
      public static const §1!?§:String = "CutScene_Type_Outro";
      
      public static const §94§:String = "CutScene_Type_Final_Outro";
       
      
      private var §9M§:§7!>§;
      
      private var §]c§:String;
      
      private var §5!Y§:Vector.<§?m§>;
      
      private var §6!S§:Number;
      
      private var §8t§:Number;
      
      private var §+![§:Number;
      
      private var §]d§:Number;
      
      private var §7U§:Sprite;
      
      private var §2!Y§:Boolean = true;
      
      private var §"t§:uint;
      
      private var §;g§:Boolean;
      
      private var §;!E§:§2!]§;
      
      private var §,!g§:§2!]§;
      
      public function §[!o§(param1:Object, param2:String)
      {
         var _loc3_:§?m§ = null;
         var _loc4_:Object = null;
         this.§5!Y§ = new Vector.<§?m§>();
         super();
         this.§6!S§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§]c§ = §#_§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§]c§ = §1!?§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§!!5§(_loc4_);
               if(_loc3_)
               {
                  this.§5!Y§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§5!Y§)
            {
               if(_loc3_ is §,;§)
               {
                  (_loc3_ as §,;§).§#!4§(this.§+![§,this.§]d§);
                  (_loc3_ as §,;§).§3'§ = this.§2!Y§;
               }
               else if(_loc3_ is §[§)
               {
                  (_loc3_ as §[§).§#!4§(this.§+![§,this.§]d§);
                  (_loc3_ as §[§).§[!,§ = this.§2!Y§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§7U§;
      }
      
      private function §!!5§(param1:Object) : §?m§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §?m§.§5!<§:
               return new §[§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §?m§.§#!B§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §,;§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §?m§.§,!n§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §'Z§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §?m§.§&!]§:
               return new §>!#§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §?m§.END:
               this.§8t§ = param1.time * 1000;
               break;
            case §?m§.§>!8§:
               this.§+![§ = param1.width;
               this.§]d§ = param1.height;
               break;
            case §?m§.§0!X§:
               this.§2!Y§ = false;
               break;
            case §?m§.§&!R§:
               this.§2!Y§ = true;
               break;
            case §?m§.§47§:
               this.§"t§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§7U§)
         {
            this.§7U§.dispose();
            this.§7U§ = null;
         }
         this.§5!Y§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§7U§)
         {
            this.§7U§ = new Sprite();
         }
         this.§6!S§ += param1;
         var _loc2_:int = this.§5!Y§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§5!Y§[_loc2_].update(this.§6!S§,this.§7U§,this.§9M§))
            {
               this.§5!Y§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§3n§();
         this.§<!S§();
         this.§9!-§();
         return this.§6!S§ < this.§8t§;
      }
      
      private function §9!-§() : void
      {
         var _loc1_:int = §`M§.§93§.§%A§.height;
         var _loc2_:Number = §2#§.§`4§;
         var _loc3_:Number = §2#§.§2"§;
         var _loc4_:int = (_loc1_ - this.§]d§ * _loc2_) / _loc2_;
         this.§7U§.y = _loc4_ >> 1;
      }
      
      private function §3n§() : void
      {
         §`M§.§93§.color = this.§"t§;
      }
      
      private function §<!S§() : void
      {
         if(this.§;g§)
         {
            return;
         }
         var _loc1_:Sprite = this.§7U§.getChildByName(§[§.§2!i§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§;g§ = true;
      }
      
      public function clone(param1:§7!>§) : §[!o§
      {
         var _loc3_:§?m§ = null;
         var _loc2_:§[!o§ = new §[!o§(null,null);
         for each(_loc3_ in this.§5!Y§)
         {
            _loc2_.§5!Y§.push(_loc3_.clone());
         }
         _loc2_.§6!S§ = this.§6!S§;
         _loc2_.§8t§ = this.§8t§;
         _loc2_.§+![§ = this.§+![§;
         _loc2_.§]d§ = this.§]d§;
         _loc2_.§2!Y§ = this.§2!Y§;
         _loc2_.§"t§ = this.§"t§;
         _loc2_.§]c§ = this.§]c§;
         _loc2_.§9M§ = param1;
         return _loc2_;
      }
      
      public function get §,c§() : String
      {
         return this.§]c§;
      }
      
      public function set §,c§(param1:String) : void
      {
         this.§]c§ = param1;
      }
   }
}
