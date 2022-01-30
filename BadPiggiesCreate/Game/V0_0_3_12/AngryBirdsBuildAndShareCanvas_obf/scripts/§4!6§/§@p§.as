package §4!6§
{
   import §!o§.§[G§;
   import §1!N§.§!!`§;
   import §1!N§.§"!k§;
   import §2!w§.§7!s§;
   import §[B§.§"d§;
   import flash.display.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   
   public class §@p§ extends EventDispatcher
   {
       
      
      protected var §1!3§:String = "";
      
      private var §?k§:Boolean = false;
      
      private var §8#§:XML;
      
      private var §@,§:Vector.<String>;
      
      protected var §3w§:Boolean = false;
      
      protected var §#"&§:Vector.<§[G§>;
      
      public function §@p§(param1:§"d§, param2:XML)
      {
         var _loc3_:XML = null;
         this.§@,§ = new Vector.<String>();
         super();
         if(param2)
         {
            if(param2.hasOwnProperty("description"))
            {
               this.§1!3§ = param2.description[0].toString();
            }
            for each(_loc3_ in param2.prompt)
            {
               this.§@,§.push(_loc3_.toString());
            }
            this.§8#§ = param2.inventory[0];
            this.§8'§(param1,param2);
         }
      }
      
      public static function §[!]§(param1:§"d§, param2:XML) : §@p§
      {
         switch(param2["@type"].toString())
         {
            case "GhostObject":
               return new §8!$§(param1,param2);
            case "Connected":
               return new §<!§(param1,param2);
            case "Request":
               return new §2%§(param1,param2);
            default:
               return null;
         }
      }
      
      protected function §8'§(param1:§"d§, param2:XML) : void
      {
         var _loc3_:XML = null;
         var _loc4_:§!!`§ = null;
         var _loc5_:§!!`§ = null;
         var _loc6_:§"!k§ = null;
         this.§#"&§ = new Vector.<§[G§>();
         for each(_loc3_ in param2.instruction)
         {
            if(_loc3_.hasOwnProperty("block"))
            {
               _loc4_ = new §!!`§(param2.instruction.block.toString());
            }
            else
            {
               if(!_loc3_.hasOwnProperty("object"))
               {
                  throw new Error("Instruction didn\'t specify a proper block or object for the starting point.");
               }
               _loc6_ = §7!s§.§5I§(_loc3_.object.toString(),param1.objects);
               _loc4_ = new §!!`§(_loc6_);
            }
            _loc5_ = new §!!`§(new Point(_loc3_.x,_loc3_.y));
            this.§#"&§.push(new §[G§(_loc4_,_loc5_));
         }
      }
      
      public function get §@^§() : XML
      {
         return this.§8#§;
      }
      
      public function refresh(param1:§"d§) : void
      {
      }
      
      public function getHUDs() : Vector.<DisplayObject>
      {
         return new Vector.<DisplayObject>();
      }
      
      public function getNextInstruction() : DisplayObject
      {
         if(!this.§#"&§ || this.§#"&§.length == 0)
         {
            return null;
         }
         return !!this.isCompleted ? null : this.§#"&§[0];
      }
      
      public function update(param1:§"d§) : Boolean
      {
         return false;
      }
      
      public function isObjectNeeded(param1:§"!k§) : Boolean
      {
         return false;
      }
      
      public function get description() : String
      {
         return this.§1!3§;
      }
      
      public function get isCompleted() : Boolean
      {
         return this.§?k§;
      }
      
      public function set isCompleted(param1:Boolean) : void
      {
         this.§?k§ = param1;
      }
      
      public function §"M§() : String
      {
         return this.§@,§.length > 0 ? this.§@,§.shift() : null;
      }
      
      public function dispose() : void
      {
      }
      
      public function onPhysicsEnabled() : void
      {
      }
   }
}
