package com.rovio.utils
{
   public class XMLUtils
   {
       
      
      public function XMLUtils()
      {
         super();
      }
      
      public static function copyNodesBetweenTrees(sourceXML:XML, out_sourceXML:XML, treesToCopy:Array, overrideSameName:Boolean = false) : void
      {
         var treeName:String = null;
         var childNode:XML = null;
         for each(treeName in treesToCopy)
         {
            for each(childNode in sourceXML[treeName].*)
            {
               if(overrideSameName)
               {
                  delete out_sourceXML[treeName][childNode.name()];
               }
               if(out_sourceXML[treeName].length() == 0)
               {
                  out_sourceXML.appendChild(new XML("<" + treeName + "/>"));
               }
               if(out_sourceXML[treeName])
               {
                  out_sourceXML[treeName].appendChild(childNode);
               }
            }
         }
      }
   }
}
