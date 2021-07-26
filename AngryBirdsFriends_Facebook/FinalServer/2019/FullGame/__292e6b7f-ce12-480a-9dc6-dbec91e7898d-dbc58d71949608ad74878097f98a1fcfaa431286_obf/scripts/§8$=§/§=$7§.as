package §8$=§
{
   import §"#k§.Starling;
   import §,#e§.§;!`§;
   import §,#e§.Sprite;
   import §7"T§.§#"^§;
   import §?#z§.§]$?§;
   
   public class §=$7§
   {
      
      public static const §#3§:String = "CutScene_Type_Intro";
      
      public static const §#d§:String = "CutScene_Type_Outro";
      
      public static const §3"C§:String = "CutScene_Type_Final_Outro";
       
      
      private var §-i§:§#"^§;
      
      private var §##t§:String;
      
      private var §##;§:Vector.<§=Q§>;
      
      private var §'"w§:Number;
      
      private var §32§:Number;
      
      private var §>"h§:Number;
      
      private var §"#G§:Number;
      
      private var §&"h§:Sprite;
      
      private var §`$#§:Boolean = true;
      
      private var §=!R§:uint;
      
      private var §;#j§:Boolean;
      
      private var §5$D§:§;!`§;
      
      private var §""R§:§;!`§;
      
      public function §=$7§(param1:Object, param2:String)
      {
         var _loc3_:§=Q§ = null;
         var _loc4_:Object = null;
         this.§##;§ = new Vector.<§=Q§>();
         super();
         this.§'"w§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§##t§ = §#3§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§##t§ = §#d§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§;#s§(_loc4_);
               if(_loc3_)
               {
                  this.§##;§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§##;§)
            {
               if(_loc3_ is §0^§)
               {
                  (_loc3_ as §0^§).setSize(this.§>"h§,this.§"#G§);
                  (_loc3_ as §0^§).§>!8§ = this.§`$#§;
               }
               else if(_loc3_ is §<"&§)
               {
                  (_loc3_ as §<"&§).setSize(this.§>"h§,this.§"#G§);
                  (_loc3_ as §<"&§).§]!x§ = this.§`$#§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§&"h§;
      }
      
      private function §;#s§(param1:Object) : §=Q§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §=Q§.§4M§:
               return new §<"&§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §=Q§.§0!I§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §0^§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §=Q§.§9l§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §<#b§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §=Q§.§#!b§:
               return new §"$-§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §=Q§.§-""§:
               this.§32§ = param1.time * 1000;
               break;
            case §=Q§.§,"-§:
               this.§>"h§ = param1.width;
               this.§"#G§ = param1.height;
               break;
            case §=Q§.§7!C§:
               this.§`$#§ = false;
               break;
            case §=Q§.§3!l§:
               this.§`$#§ = true;
               break;
            case §=Q§.§^M§:
               this.§=!R§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§&"h§)
         {
            this.§&"h§.dispose();
            this.§&"h§ = null;
         }
         this.§##;§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§&"h§)
         {
            this.§&"h§ = new Sprite();
         }
         this.§'"w§ += param1;
         var _loc2_:int = this.§##;§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§##;§[_loc2_].update(this.§'"w§,this.§&"h§,this.§-i§))
            {
               this.§##;§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§<$+§();
         this.§7"[§();
         this.§#!]§();
         return this.§'"w§ < this.§32§;
      }
      
      private function §#!]§() : void
      {
         var _loc1_:int = Starling.§]#g§.height;
         var _loc2_:int = Starling.§]#g§.width;
         var _loc3_:Number = §]$?§.§6p§;
         var _loc4_:Number = §]$?§.§[#U§;
         var _loc5_:int = (_loc1_ - this.§"#G§ * _loc3_) / _loc3_;
         this.§&"h§.scaleX = this.§&"h§.scaleY = Math.max(0.5,Math.min(1,_loc3_ / _loc4_));
         this.§&"h§.y = _loc5_ >> 1;
      }
      
      private function §<$+§() : void
      {
         Starling.§4$#§.color = this.§=!R§;
      }
      
      private function §7"[§() : void
      {
         if(this.§;#j§)
         {
            return;
         }
         var _loc1_:Sprite = this.§&"h§.getChildByName(§<"&§.§6A§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§;#j§ = true;
      }
      
      public function clone(param1:§#"^§) : §=$7§
      {
         var _loc3_:§=Q§ = null;
         var _loc2_:§=$7§ = new §=$7§(null,null);
         for each(_loc3_ in this.§##;§)
         {
            _loc2_.§##;§.push(_loc3_.clone());
         }
         _loc2_.§'"w§ = this.§'"w§;
         _loc2_.§32§ = this.§32§;
         _loc2_.§>"h§ = this.§>"h§;
         _loc2_.§"#G§ = this.§"#G§;
         _loc2_.§`$#§ = this.§`$#§;
         _loc2_.§=!R§ = this.§=!R§;
         _loc2_.§##t§ = this.§##t§;
         _loc2_.§-i§ = param1;
         return _loc2_;
      }
      
      public function get cutSceneType() : String
      {
         return this.§##t§;
      }
      
      public function set cutSceneType(param1:String) : void
      {
         this.§##t§ = param1;
      }
   }
}
