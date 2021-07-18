package §%"$§
{
   import §#R§.§79§;
   import §5!V§.§!w§;
   import §7r§.§,!<§;
   import §7r§.§=q§;
   import §8" §.§2J§;
   import §8" §.§`8§;
   import flash.display.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   
   public class §[!0§ extends EventDispatcher
   {
       
      
      protected var §9!7§:String = "";
      
      private var §9!?§:Boolean = false;
      
      private var §,c§:XML;
      
      private var §>!4§:Vector.<§2J§>;
      
      protected var §0!>§:Boolean = false;
      
      protected var §`!"§:Vector.<§79§>;
      
      public function §[!0§(param1:§!w§, param2:XML)
      {
         var _loc3_:XML = null;
         this.§>!4§ = new Vector.<§2J§>();
         super();
         if(param2)
         {
            if(param2.hasOwnProperty("description"))
            {
               this.§9!7§ = param2.description[0].toString();
            }
            for each(_loc3_ in param2.prompt)
            {
               this.§>!4§.push(new §2J§(_loc3_));
            }
            this.§,c§ = param2.inventory[0];
            this.§"M§(param1,param2);
         }
      }
      
      public static function §0j§(param1:§!w§, param2:XML) : §[!0§
      {
         switch(param2["@type"].toString())
         {
            case "GhostObject":
               return new §#!p§(param1,param2);
            case "Connected":
               return new §[5§(param1,param2);
            case "Request":
               return new §+!+§(param1,param2);
            default:
               return null;
         }
      }
      
      protected function §"M§(param1:§!w§, param2:XML) : void
      {
         var _loc3_:XML = null;
         var _loc4_:§,!<§ = null;
         var _loc5_:§,!<§ = null;
         var _loc6_:§=q§ = null;
         this.§`!"§ = new Vector.<§79§>();
         for each(_loc3_ in param2.instruction)
         {
            if(_loc3_.hasOwnProperty("block"))
            {
               _loc4_ = new §,!<§(param2.instruction.block.toString());
            }
            else
            {
               if(!_loc3_.hasOwnProperty("object"))
               {
                  throw new Error("Instruction didn\'t specify a proper block or object for the starting point.");
               }
               _loc6_ = §`8§.§"!h§(_loc3_.object.toString(),param1.objects);
               _loc4_ = new §,!<§(_loc6_);
            }
            _loc5_ = new §,!<§(new Point(_loc3_.x,_loc3_.y));
            this.§`!"§.push(new §79§(_loc4_,_loc5_));
         }
      }
      
      public function get §?g§() : XML
      {
         return this.§,c§;
      }
      
      public function refresh(param1:§!w§) : void
      {
      }
      
      public function getHUDs() : Vector.<DisplayObject>
      {
         return new Vector.<DisplayObject>();
      }
      
      public function getNextInstruction() : DisplayObject
      {
         if(!this.§`!"§ || this.§`!"§.length == 0)
         {
            return null;
         }
         return !!this.isCompleted ? null : this.§`!"§[0];
      }
      
      public function update(param1:§!w§) : Boolean
      {
         return false;
      }
      
      public function isObjectNeeded(param1:§=q§) : Boolean
      {
         return false;
      }
      
      public function get description() : String
      {
         return this.§9!7§;
      }
      
      public function get isCompleted() : Boolean
      {
         return this.§9!?§;
      }
      
      public function set isCompleted(param1:Boolean) : void
      {
         this.§9!?§ = param1;
      }
      
      public function §=!"§() : §2J§
      {
         return this.§>!4§.length > 0 ? this.§>!4§.shift() : null;
      }
      
      public function dispose() : void
      {
      }
      
      public function onPhysicsEnabled() : void
      {
      }
   }
}
