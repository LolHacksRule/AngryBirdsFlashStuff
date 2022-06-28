package §"!&§
{
   import §,6§.§!o§;
   import §5i§.§4!]§;
   import §9E§.§1!w§;
   import §9E§.Sprite;
   import §@4§.§,!]§;
   
   public class §"R§
   {
      
      public static const §>!l§:String = "CutScene_Type_Intro";
      
      public static const §'R§:String = "CutScene_Type_Outro";
      
      public static const §continue§:String = "CutScene_Type_Final_Outro";
       
      
      private var §3!L§:§!o§;
      
      private var §[n§:String;
      
      private var §>!`§:Vector.<§!!%§>;
      
      private var §?Q§:Number;
      
      private var §[!&§:Number;
      
      private var §>!D§:Number;
      
      private var §7!3§:Number;
      
      private var §8!9§:Sprite;
      
      private var § l§:Boolean = true;
      
      private var §-!L§:uint;
      
      private var §2!^§:Boolean;
      
      private var §+!!§:§1!w§;
      
      private var §-B§:§1!w§;
      
      public function §"R§(param1:Object, param2:String)
      {
         var _loc3_:§!!%§ = null;
         var _loc4_:Object = null;
         this.§>!`§ = new Vector.<§!!%§>();
         super();
         this.§?Q§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§[n§ = §>!l§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§[n§ = §'R§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§&!t§(_loc4_);
               if(_loc3_)
               {
                  this.§>!`§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§>!`§)
            {
               if(_loc3_ is §,w§)
               {
                  (_loc3_ as §,w§).setSize(this.§>!D§,this.§7!3§);
                  (_loc3_ as §,w§).§!&§ = this.§ l§;
               }
               else if(_loc3_ is §+l§)
               {
                  (_loc3_ as §+l§).setSize(this.§>!D§,this.§7!3§);
                  (_loc3_ as §+l§).§6!F§ = this.§ l§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§8!9§;
      }
      
      private function §&!t§(param1:Object) : §!!%§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §!!%§.§<!Q§:
               return new §+l§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §!!%§.§+!S§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §,w§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §!!%§.§4!M§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §2!W§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §!!%§.§,!3§:
               return new §#C§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §!!%§.END:
               this.§[!&§ = param1.time * 1000;
               break;
            case §!!%§.§,1§:
               this.§>!D§ = param1.width;
               this.§7!3§ = param1.height;
               break;
            case §!!%§.§^!,§:
               this.§ l§ = false;
               break;
            case §!!%§.§]!F§:
               this.§ l§ = true;
               break;
            case §!!%§.§'l§:
               this.§-!L§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§8!9§)
         {
            this.§8!9§.dispose();
            this.§8!9§ = null;
         }
         this.§>!`§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§8!9§)
         {
            this.§8!9§ = new Sprite();
         }
         this.§?Q§ += param1;
         var _loc2_:int = this.§>!`§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§>!`§[_loc2_].update(this.§?Q§,this.§8!9§,this.§3!L§))
            {
               this.§>!`§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§8V§();
         this.§1!q§();
         this.§"!y§();
         return this.§?Q§ < this.§[!&§;
      }
      
      private function §"!y§() : void
      {
         var _loc1_:int = §,!]§.§!9§.§#S§.height;
         var _loc2_:Number = §4!]§.§4?§;
         var _loc3_:Number = §4!]§.§%!'§;
         var _loc4_:int = (_loc1_ - this.§7!3§ * _loc2_) / _loc2_;
         this.§8!9§.y = _loc4_ >> 1;
      }
      
      private function §8V§() : void
      {
         §,!]§.§!9§.color = this.§-!L§;
      }
      
      private function §1!q§() : void
      {
         if(this.§2!^§)
         {
            return;
         }
         var _loc1_:Sprite = this.§8!9§.getChildByName(§+l§.§82§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§2!^§ = true;
      }
      
      public function clone(param1:§!o§) : §"R§
      {
         var _loc3_:§!!%§ = null;
         var _loc2_:§"R§ = new §"R§(null,null);
         for each(_loc3_ in this.§>!`§)
         {
            _loc2_.§>!`§.push(_loc3_.clone());
         }
         _loc2_.§?Q§ = this.§?Q§;
         _loc2_.§[!&§ = this.§[!&§;
         _loc2_.§>!D§ = this.§>!D§;
         _loc2_.§7!3§ = this.§7!3§;
         _loc2_.§ l§ = this.§ l§;
         _loc2_.§-!L§ = this.§-!L§;
         _loc2_.§[n§ = this.§[n§;
         _loc2_.§3!L§ = param1;
         return _loc2_;
      }
      
      public function get §`!`§() : String
      {
         return this.§[n§;
      }
      
      public function set §`!`§(param1:String) : void
      {
         this.§[n§ = param1;
      }
   }
}
