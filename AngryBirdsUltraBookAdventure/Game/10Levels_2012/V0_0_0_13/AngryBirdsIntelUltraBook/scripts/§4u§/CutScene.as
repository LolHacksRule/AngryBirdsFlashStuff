package §4u§
{
   import § D§.§]!B§;
   import §,!_§.TextureManager;
   import §0P§.Starling;
   import §6!7§.§3x§;
   import §6!7§.Sprite;
   
   public class CutScene
   {
      
      public static const §3@§:String = "CutScene_Type_Intro";
      
      public static const §@e§:String = "CutScene_Type_Outro";
      
      public static const §5!_§:String = "CutScene_Type_Final_Outro";
       
      
      private var §6! §:TextureManager;
      
      private var §&!W§:String;
      
      private var § !7§:Vector.<§^!I§>;
      
      private var §2+§:Number;
      
      private var §-! §:Number;
      
      private var §[v§:Number;
      
      private var §5%§:Number;
      
      private var §'6§:Sprite;
      
      private var §6m§:Boolean = true;
      
      private var §[!P§:uint;
      
      private var §2!j§:Boolean;
      
      private var §1%§:§3x§;
      
      private var §>i§:§3x§;
      
      public function CutScene(param1:Object, param2:String)
      {
         var _loc3_:§^!I§ = null;
         var _loc4_:Object = null;
         this.§ !7§ = new Vector.<§^!I§>();
         super();
         this.§2+§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§&!W§ = §3@§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§&!W§ = §@e§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§4!f§(_loc4_);
               if(_loc3_)
               {
                  this.§ !7§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§ !7§)
            {
               if(_loc3_ is §6!G§)
               {
                  (_loc3_ as §6!G§).setSize(this.§[v§,this.§5%§);
                  (_loc3_ as §6!G§).§=k§ = this.§6m§;
               }
               else if(_loc3_ is §8!E§)
               {
                  (_loc3_ as §8!E§).setSize(this.§[v§,this.§5%§);
                  (_loc3_ as §8!E§).§;!§ = this.§6m§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§'6§;
      }
      
      private function §4!f§(param1:Object) : §^!I§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §^!I§.§ W§:
               return new §8!E§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §^!I§.§[!h§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §6!G§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §^!I§.§-X§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §?#§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §^!I§.§;e§:
               return new §8!!§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §^!I§.§-2§:
               this.§-! § = param1.time * 1000;
               break;
            case §^!I§.§const§:
               this.§[v§ = param1.width;
               this.§5%§ = param1.height;
               break;
            case §^!I§.§2!C§:
               this.§6m§ = false;
               break;
            case §^!I§.§^S§:
               this.§6m§ = true;
               break;
            case §^!I§.§"V§:
               this.§[!P§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§'6§)
         {
            this.§'6§.dispose();
            this.§'6§ = null;
         }
         this.§ !7§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§'6§)
         {
            this.§'6§ = new Sprite();
         }
         this.§2+§ += param1;
         var _loc2_:int = this.§ !7§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§ !7§[_loc2_].update(this.§2+§,this.§'6§,this.§6! §))
            {
               this.§ !7§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§8!8§();
         this.§[!0§();
         this.§]H§();
         return this.§2+§ < this.§-! §;
      }
      
      private function §]H§() : void
      {
         var _loc1_:int = Starling.§!!F§.§8l§.height;
         var _loc2_:Number = §]!B§.§^F§;
         var _loc3_:Number = §]!B§.§9$§;
         var _loc4_:int = (_loc1_ - this.§5%§ * _loc2_) / _loc2_;
         this.§'6§.y = _loc4_ >> 1;
      }
      
      private function §8!8§() : void
      {
         Starling.§!!F§.color = this.§[!P§;
      }
      
      private function §[!0§() : void
      {
         if(this.§2!j§)
         {
            return;
         }
         var _loc1_:Sprite = this.§'6§.getChildByName(§8!E§.§?!^§) as Sprite;
         if(_loc1_)
         {
         }
         this.§2!j§ = true;
      }
      
      public function clone(param1:TextureManager) : CutScene
      {
         var _loc3_:§^!I§ = null;
         var _loc2_:CutScene = new CutScene(null,null);
         for each(_loc3_ in this.§ !7§)
         {
            _loc2_.§ !7§.push(_loc3_.clone());
         }
         _loc2_.§2+§ = this.§2+§;
         _loc2_.§-! § = this.§-! §;
         _loc2_.§[v§ = this.§[v§;
         _loc2_.§5%§ = this.§5%§;
         _loc2_.§6m§ = this.§6m§;
         _loc2_.§[!P§ = this.§[!P§;
         _loc2_.§&!W§ = this.§&!W§;
         _loc2_.§6! § = param1;
         return _loc2_;
      }
      
      public function get §^!"§() : String
      {
         return this.§&!W§;
      }
      
      public function set §^!"§(param1:String) : void
      {
         this.§&!W§ = param1;
      }
   }
}
