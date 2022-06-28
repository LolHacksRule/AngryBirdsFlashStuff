package §9!7§
{
   import §+!?§.§"h§;
   import §,_§.§-!!§;
   import §,_§.Sprite;
   import §5`§.§?y§;
   import §catch§.§4@§;
   
   public class § !A§
   {
      
      public static const §"!?§:String = "CutScene_Type_Intro";
      
      public static const §!x§:String = "CutScene_Type_Outro";
      
      public static const §!1§:String = "CutScene_Type_Final_Outro";
       
      
      private var §^S§:§?y§;
      
      private var §3y§:String;
      
      private var §4!"§:Vector.<§`E§>;
      
      private var §9!8§:Number;
      
      private var §@z§:Number;
      
      private var §5;§:Number;
      
      private var §>!'§:Number;
      
      private var §62§:Sprite;
      
      private var §%J§:Boolean = true;
      
      private var §^!"§:uint;
      
      private var §!Z§:Boolean;
      
      private var §,q§:§-!!§;
      
      private var §?H§:§-!!§;
      
      public function § !A§(param1:Object, param2:String)
      {
         var _loc3_:§`E§ = null;
         var _loc4_:Object = null;
         this.§4!"§ = new Vector.<§`E§>();
         super();
         this.§9!8§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§3y§ = §"!?§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§3y§ = §!x§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§^D§(_loc4_);
               if(_loc3_)
               {
                  this.§4!"§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§4!"§)
            {
               if(_loc3_ is §,8§)
               {
                  (_loc3_ as §,8§).setSize(this.§5;§,this.§>!'§);
                  (_loc3_ as §,8§).§>!;§ = this.§%J§;
               }
               else if(_loc3_ is §9v§)
               {
                  (_loc3_ as §9v§).setSize(this.§5;§,this.§>!'§);
                  (_loc3_ as §9v§).§ T§ = this.§%J§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§62§;
      }
      
      private function §^D§(param1:Object) : §`E§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §`E§.§#r§:
               return new §9v§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §`E§.§#p§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §,8§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §`E§.§8,§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §3j§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §`E§.§'V§:
               return new § y§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §`E§.END:
               this.§@z§ = param1.time * 1000;
               break;
            case §`E§.§'l§:
               this.§5;§ = param1.width;
               this.§>!'§ = param1.height;
               break;
            case §`E§.§-!&§:
               this.§%J§ = false;
               break;
            case §`E§.§[t§:
               this.§%J§ = true;
               break;
            case §`E§.§&J§:
               this.§^!"§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§62§)
         {
            this.§62§.dispose();
            this.§62§ = null;
         }
         this.§4!"§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§62§)
         {
            this.§62§ = new Sprite();
         }
         this.§9!8§ += param1;
         var _loc2_:int = this.§4!"§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§4!"§[_loc2_].update(this.§9!8§,this.§62§,this.§^S§))
            {
               this.§4!"§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§<0§();
         this.§,m§();
         this.§0U§();
         return this.§9!8§ < this.§@z§;
      }
      
      private function §0U§() : void
      {
         var _loc1_:int = §4@§.§0W§.§5B§.height;
         var _loc2_:Number = §"h§.§'!I§;
         var _loc3_:Number = §"h§.§for§;
         var _loc4_:int = (_loc1_ - this.§>!'§ * _loc2_) / _loc2_;
         this.§62§.y = _loc4_ >> 1;
      }
      
      private function §<0§() : void
      {
         §4@§.§0W§.color = this.§^!"§;
      }
      
      private function §,m§() : void
      {
         if(this.§!Z§)
         {
            return;
         }
         var _loc1_:Sprite = this.§62§.getChildByName(§9v§.§6!-§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§!Z§ = true;
      }
      
      public function clone(param1:§?y§) : § !A§
      {
         var _loc3_:§`E§ = null;
         var _loc2_:§ !A§ = new § !A§(null,null);
         for each(_loc3_ in this.§4!"§)
         {
            _loc2_.§4!"§.push(_loc3_.clone());
         }
         _loc2_.§9!8§ = this.§9!8§;
         _loc2_.§@z§ = this.§@z§;
         _loc2_.§5;§ = this.§5;§;
         _loc2_.§>!'§ = this.§>!'§;
         _loc2_.§%J§ = this.§%J§;
         _loc2_.§^!"§ = this.§^!"§;
         _loc2_.§3y§ = this.§3y§;
         _loc2_.§^S§ = param1;
         return _loc2_;
      }
      
      public function get §+g§() : String
      {
         return this.§3y§;
      }
      
      public function set §+g§(param1:String) : void
      {
         this.§3y§ = param1;
      }
   }
}
