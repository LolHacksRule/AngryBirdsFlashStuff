package §9";§
{
   import §=!M§.§9!P§;
   import flash.external.ExternalInterface;
   
   public class §#!c§
   {
      
      public static var §@!_§:Boolean = true;
      
      private static var §=K§:Object;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §@!_§ = true;
            do
            {
               §=K§ = {};
            }
            while(!_loc1_);
            
         }
      }
      
      public function §#!c§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         try
         {
            if(!§=K§[param1])
            {
               if(_loc4_ || _loc3_)
               {
                  §=K§[param1] = new §5!l§(param1);
                  if(_loc4_)
                  {
                     addr45:
                     (§=K§[param1] as §5!l§).addCallback(param2);
                  }
               }
               §§goto(addr74);
            }
            §§goto(addr45);
         }
         catch(e:Error)
         {
         }
         addr74:
      }
      
      public static function §^D§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            if(§=K§[param1])
            {
               if(_loc4_ || §#!c§)
               {
                  addr55:
                  (§=K§[param1] as §5!l§).§^D§(param2);
               }
            }
            return;
         }
         §§goto(addr55);
      }
      
      public static function performCall(param1:String, ... rest) : *
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[4] = null;
            addr84:
            while(true)
            {
               §§push(§§newactivation());
               continue loop0;
            }
         }
      }
   }
}
