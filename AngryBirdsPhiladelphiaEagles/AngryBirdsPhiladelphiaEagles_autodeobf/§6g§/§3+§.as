package §6g§
{
   import §;!2§.§ set§;
   import §;!2§.include;
   import §@B§.§8V§;
   
   public class §3+§
   {
      
      public static const §4!M§:int = 365;
      
      public static const §@!?§:String = "ABEagles";
      
      private static var §[v§:Object;
       
      
      public function §3+§()
      {
         super();
      }
      
      public static function getValue(param1:String) : String
      {
         if(§[v§ == null)
         {
            §#!=§();
         }
         return §[v§[param1];
      }
      
      public static function §9z§(param1:String, param2:String) : void
      {
         if(§[v§ == null)
         {
            §#!=§();
         }
         §[v§[param1] = param2;
      }
      
      private static function §#!=§() : void
      {
         var returnObject:String = §8V§.§^^§("readCookie",§@!?§);
         try
         {
            §[v§ = new include(returnObject,false).getValue();
         }
         catch(e:Error)
         {
            §[v§ = new Object();
         }
      }
      
      public static function flush() : void
      {
         var _loc1_:String = null;
         if(§[v§ != null)
         {
            _loc1_ = new § set§(§[v§).getString();
            §8V§.§^^§("createCookie",§@!?§,_loc1_,§4!M§);
         }
      }
   }
}
