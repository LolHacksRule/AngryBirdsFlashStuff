package § L§
{
   import §4!s§.§%I§;
   import §="$§.§"!#§;
   import §?^§.§0Q§;
   import §?^§.§;"6§;
   import §`J§.§[!6§;
   import flash.display.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   
   public class §4"8§ extends EventDispatcher
   {
       
      
      protected var §4""§:String = "";
      
      private var §@!b§:Boolean = false;
      
      private var §[!H§:XML;
      
      private var §^1§:Vector.<String>;
      
      protected var §`!X§:Boolean = false;
      
      protected var §6!A§:Vector.<§[!6§>;
      
      public function §4"8§(param1:§%I§, param2:XML)
      {
         var _loc3_:XML = null;
         this.§^1§ = new Vector.<String>();
         super();
         if(param2)
         {
            if(param2.hasOwnProperty("description"))
            {
               this.§4""§ = param2.description[0].toString();
            }
            for each(_loc3_ in param2.prompt)
            {
               this.§^1§.push(_loc3_.toString());
            }
            this.§[!H§ = param2.inventory[0];
            this.§"Y§(param1,param2);
         }
      }
      
      public static function §6!0§(param1:§%I§, param2:XML) : §4"8§
      {
         switch(param2["@type"].toString())
         {
            case "GhostObject":
               return new §,!"§(param1,param2);
            case "Connected":
               return new §7""§(param1,param2);
            case "Request":
               return new §;!%§(param1,param2);
            default:
               return null;
         }
      }
      
      protected function §"Y§(param1:§%I§, param2:XML) : void
      {
         var _loc3_:XML = null;
         var _loc4_:§;"6§ = null;
         var _loc5_:§;"6§ = null;
         var _loc6_:§0Q§ = null;
         this.§6!A§ = new Vector.<§[!6§>();
         for each(_loc3_ in param2.instruction)
         {
            if(_loc3_.hasOwnProperty("block"))
            {
               _loc4_ = new §;"6§(param2.instruction.block.toString());
            }
            else
            {
               if(!_loc3_.hasOwnProperty("object"))
               {
                  throw new Error("Instruction didn\'t specify a proper block or object for the starting point.");
               }
               _loc6_ = §"!#§.§ !&§(_loc3_.object.toString(),param1.objects);
               _loc4_ = new §;"6§(_loc6_);
            }
            _loc5_ = new §;"6§(new Point(_loc3_.x,_loc3_.y));
            this.§6!A§.push(new §[!6§(_loc4_,_loc5_));
         }
      }
      
      public function get § p§() : XML
      {
         return this.§[!H§;
      }
      
      public function refresh(param1:§%I§) : void
      {
      }
      
      public function getHUDs() : Vector.<DisplayObject>
      {
         return new Vector.<DisplayObject>();
      }
      
      public function getNextInstruction() : DisplayObject
      {
         if(!this.§6!A§ || this.§6!A§.length == 0)
         {
            return null;
         }
         return !!this.isCompleted ? null : this.§6!A§[0];
      }
      
      public function update(param1:§%I§) : Boolean
      {
         return false;
      }
      
      public function isObjectNeeded(param1:§0Q§) : Boolean
      {
         return false;
      }
      
      public function get description() : String
      {
         return this.§4""§;
      }
      
      public function get isCompleted() : Boolean
      {
         return this.§@!b§;
      }
      
      public function set isCompleted(param1:Boolean) : void
      {
         this.§@!b§ = param1;
      }
      
      public function §9!t§() : String
      {
         return this.§^1§.length > 0 ? this.§^1§.shift() : null;
      }
      
      public function dispose() : void
      {
      }
      
      public function onPhysicsEnabled() : void
      {
      }
   }
}
