package §%r§
{
   import §#!,§.§6!Y§;
   import §#!,§.Sprite;
   import §,!7§.TextureManager;
   import §7!>§.Starling;
   import §?!Y§.§`S§;
   
   public class CutScene
   {
      
      public static const §2]§:String = "CutScene_Type_Intro";
      
      public static const §&M§:String = "CutScene_Type_Outro";
      
      public static const §[V§:String = "CutScene_Type_Final_Outro";
       
      
      private var §7!`§:TextureManager;
      
      private var §"o§:String;
      
      private var §5!h§:Vector.<§,!b§>;
      
      private var §28§:Number;
      
      private var §<N§:Number;
      
      private var §,<§:Number;
      
      private var §5,§:Number;
      
      private var §"!,§:Sprite;
      
      private var §>![§:Boolean = true;
      
      private var §&@§:uint;
      
      private var § set§:Boolean;
      
      private var §+!§:§6!Y§;
      
      private var §%!S§:§6!Y§;
      
      public function CutScene(param1:Object, param2:String)
      {
         var _loc3_:§,!b§ = null;
         var _loc4_:Object = null;
         this.§5!h§ = new Vector.<§,!b§>();
         super();
         this.§28§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§"o§ = §2]§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§"o§ = §&M§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§4!k§(_loc4_);
               if(_loc3_)
               {
                  this.§5!h§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§5!h§)
            {
               if(_loc3_ is §8h§)
               {
                  (_loc3_ as §8h§).setSize(this.§,<§,this.§5,§);
                  (_loc3_ as §8h§).§'R§ = this.§>![§;
               }
               else if(_loc3_ is §`!Q§)
               {
                  (_loc3_ as §`!Q§).setSize(this.§,<§,this.§5,§);
                  (_loc3_ as §`!Q§).§@!g§ = this.§>![§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§"!,§;
      }
      
      private function §4!k§(param1:Object) : §,!b§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §,!b§.§,!#§:
               return new §`!Q§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §,!b§.§,+§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §8h§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §,!b§.§10§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §^u§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §,!b§.§-J§:
               return new §[!H§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §,!b§.§1d§:
               this.§<N§ = param1.time * 1000;
               break;
            case §,!b§.§;P§:
               this.§,<§ = param1.width;
               this.§5,§ = param1.height;
               break;
            case §,!b§.§#!&§:
               this.§>![§ = false;
               break;
            case §,!b§.§]K§:
               this.§>![§ = true;
               break;
            case §,!b§.§6b§:
               this.§&@§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§"!,§)
         {
            this.§"!,§.dispose();
            this.§"!,§ = null;
         }
         this.§5!h§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§"!,§)
         {
            this.§"!,§ = new Sprite();
         }
         this.§28§ += param1;
         var _loc2_:int = this.§5!h§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§5!h§[_loc2_].update(this.§28§,this.§"!,§,this.§7!`§))
            {
               this.§5!h§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§,!A§();
         this.§27§();
         this.§-u§();
         return this.§28§ < this.§<N§;
      }
      
      private function §-u§() : void
      {
         var _loc1_:int = Starling.§7!+§.§#L§.height;
         var _loc2_:Number = §`S§.§`!A§;
         var _loc3_:Number = §`S§.§4+§;
         var _loc4_:int = (_loc1_ - this.§5,§ * _loc2_) / _loc2_;
         this.§"!,§.y = _loc4_ >> 1;
      }
      
      private function §,!A§() : void
      {
         Starling.§7!+§.color = this.§&@§;
      }
      
      private function §27§() : void
      {
         if(this.§ set§)
         {
            return;
         }
         var _loc1_:Sprite = this.§"!,§.getChildByName(§`!Q§.§;#§) as Sprite;
         if(_loc1_)
         {
         }
         this.§ set§ = true;
      }
      
      public function clone(param1:TextureManager) : CutScene
      {
         var _loc3_:§,!b§ = null;
         var _loc2_:CutScene = new CutScene(null,null);
         for each(_loc3_ in this.§5!h§)
         {
            _loc2_.§5!h§.push(_loc3_.clone());
         }
         _loc2_.§28§ = this.§28§;
         _loc2_.§<N§ = this.§<N§;
         _loc2_.§,<§ = this.§,<§;
         _loc2_.§5,§ = this.§5,§;
         _loc2_.§>![§ = this.§>![§;
         _loc2_.§&@§ = this.§&@§;
         _loc2_.§"o§ = this.§"o§;
         _loc2_.§7!`§ = param1;
         return _loc2_;
      }
      
      public function get §]p§() : String
      {
         return this.§"o§;
      }
      
      public function set §]p§(param1:String) : void
      {
         this.§"o§ = param1;
      }
   }
}
