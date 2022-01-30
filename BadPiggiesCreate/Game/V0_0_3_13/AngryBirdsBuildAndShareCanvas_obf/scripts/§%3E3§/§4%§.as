package §>3§
{
   import §4!S§.§&"'§;
   import §4!S§.§="%§;
   import §8!E§.§?!X§;
   import §8E§.§'!a§;
   import §=%§.§0L§;
   import §=%§.§<A§;
   import flash.display.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   
   public class §4%§ extends EventDispatcher
   {
       
      
      protected var §?!Y§:String = "";
      
      private var §[!H§:Boolean = false;
      
      private var §="#§:XML;
      
      private var §#!?§:Vector.<§&"'§>;
      
      protected var §2!>§:Boolean = false;
      
      protected var §?!Q§:Vector.<§'!a§>;
      
      public function §4%§(param1:§?!X§, param2:XML)
      {
         var _loc3_:XML = null;
         this.§#!?§ = new Vector.<§&"'§>();
         super();
         if(param2)
         {
            if(param2.hasOwnProperty("description"))
            {
               this.§?!Y§ = param2.description[0].toString();
            }
            for each(_loc3_ in param2.prompt)
            {
               this.§#!?§.push(new §&"'§(_loc3_));
            }
            this.§="#§ = param2.inventory[0];
            this.§4!g§(param1,param2);
         }
      }
      
      public static function §+!A§(param1:§?!X§, param2:XML) : §4%§
      {
         switch(param2["@type"].toString())
         {
            case "GhostObject":
               return new §2R§(param1,param2);
            case "Connected":
               return new § !V§(param1,param2);
            case "Request":
               return new §-S§(param1,param2);
            default:
               return null;
         }
      }
      
      protected function §4!g§(param1:§?!X§, param2:XML) : void
      {
         var _loc3_:XML = null;
         var _loc4_:§0L§ = null;
         var _loc5_:§0L§ = null;
         var _loc6_:§<A§ = null;
         this.§?!Q§ = new Vector.<§'!a§>();
         for each(_loc3_ in param2.instruction)
         {
            if(_loc3_.hasOwnProperty("block"))
            {
               _loc4_ = new §0L§(param2.instruction.block.toString());
            }
            else
            {
               if(!_loc3_.hasOwnProperty("object"))
               {
                  throw new Error("Instruction didn\'t specify a proper block or object for the starting point.");
               }
               _loc6_ = §="%§.§&!c§(_loc3_.object.toString(),param1.objects);
               _loc4_ = new §0L§(_loc6_);
            }
            _loc5_ = new §0L§(new Point(_loc3_.x,_loc3_.y));
            this.§?!Q§.push(new §'!a§(_loc4_,_loc5_));
         }
      }
      
      public function get §&!Z§() : XML
      {
         return this.§="#§;
      }
      
      public function refresh(param1:§?!X§) : void
      {
      }
      
      public function getHUDs() : Vector.<DisplayObject>
      {
         return new Vector.<DisplayObject>();
      }
      
      public function getNextInstruction() : DisplayObject
      {
         if(!this.§?!Q§ || this.§?!Q§.length == 0)
         {
            return null;
         }
         return !!this.isCompleted ? null : this.§?!Q§[0];
      }
      
      public function update(param1:§?!X§) : Boolean
      {
         return false;
      }
      
      public function isObjectNeeded(param1:§<A§) : Boolean
      {
         return false;
      }
      
      public function get description() : String
      {
         return this.§?!Y§;
      }
      
      public function get isCompleted() : Boolean
      {
         return this.§[!H§;
      }
      
      public function set isCompleted(param1:Boolean) : void
      {
         this.§[!H§ = param1;
      }
      
      public function §[",§() : §&"'§
      {
         return this.§#!?§.length > 0 ? this.§#!?§.shift() : null;
      }
      
      public function dispose() : void
      {
      }
      
      public function onPhysicsEnabled() : void
      {
      }
   }
}
