package §4M§
{
   import §!=§.§[!F§;
   import §,!K§.§ e§;
   import §,!K§.§79§;
   
   public class §9M§
   {
      
      public static const §,8§:int = 365;
      
      public static const §&v§:String = "ABEagles";
      
      private static var §'J§:Object;
       
      
      public function §9M§()
      {
         super();
      }
      
      public static function getValue(param1:String) : String
      {
         if(§'J§ == null)
         {
            §'6§();
         }
         return §'J§[param1];
      }
      
      public static function §9n§(param1:String, param2:String) : void
      {
         if(§'J§ == null)
         {
            §'6§();
         }
         §'J§[param1] = param2;
      }
      
      private static function §'6§() : void
      {
         var returnObject:String = §[!F§.§;!&§("readCookie",§&v§);
         try
         {
            §'J§ = new § e§(returnObject,false).getValue();
         }
         catch(e:Error)
         {
            §'J§ = new Object();
         }
      }
      
      public static function flush() : void
      {
         var _loc1_:String = null;
         if(§'J§ != null)
         {
            _loc1_ = new §79§(§'J§).getString();
            §[!F§.§;!&§("createCookie",§&v§,_loc1_,§,8§);
         }
      }
   }
}
